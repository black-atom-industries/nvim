# Black Atom Neovim Performance Optimization Plan

## Executive Summary

This document outlines a comprehensive performance optimization strategy for the Black Atom Neovim theme plugin, addressing significant startup time issues identified through profiling. The proposed solution leverages Neovim's built-in ShaDa (Shared Data) mechanism to implement intelligent caching, resulting in expected performance improvements of 90%+ for cached theme loads.

## Current Performance Baseline

### Profiler Results (Snacks Profiler)

Based on the provided screenshots, the Black Atom theme loading shows the following performance characteristics:

#### Initial Load Metrics
- **treesitter.setup()**: ~3.73ms
- **vim.notify_once("treesitter: module not found")**: ~0.23ms
- **black-atom.highlights.apply**: ~3.62ms
- **black-atom.lib.highlights.map**: ~2.44ms
- **black-atom.lib.filter.get_highlight_modules**: ~2.29ms
- **black-atom.lib.files.scan_path_for_files**: ~2.29ms
- **require("black-atom.treesitter.query")**: ~3.48ms
- **require("black-atom.treesitter.termcap")**: ~1.63ms
- **require("vim.treesitter.ts_utils")**: ~1.30ms
- **require("black-atom.commands").register()**: ~0.07ms

#### Aggregate Performance Impact
- **Total Black Atom initialization**: ~7-8ms aggregate
- **Highlight building process**: ~6-7ms (majority of time)
- **File system operations**: ~2-3ms
- **Module loading overhead**: ~3-4ms

### Performance Bottlenecks Identified

1. **File System Scanning (2.29ms)**
   - Recursive `vim.fn.glob()` operations on every theme load
   - Scanning entire highlights directory structure repeatedly
   - No caching of discovered modules between sessions

2. **Module Loading Overhead (3-4ms)**
   - Loading all ~25 highlight modules regardless of plugin availability
   - Sequential require() calls for each module
   - Redundant module loading on theme switches

3. **Highlight Map Building (2.44ms)**
   - Complete rebuild of highlight maps on every load
   - No caching of computed highlight definitions
   - Redundant processing of unchanged configurations

4. **Configuration Processing**
   - Deep table merging on every load
   - Validation performed repeatedly for unchanged configs
   - No memoization of processed configurations

## Proposed Solution: ShaDa-Based Intelligent Caching

### Architecture Overview

```lua
-- Cache Structure in ShaDa
vim.g.black_atom_cache = {
    commit_hash = nil,  -- Git commit hash, dynamically fetched for automatic invalidation
    highlights = {
        -- Cached highlight maps per theme+config combo
        ["theme_key:config_hash"] = {
            timestamp = os.time(),
            data = highlight_map
        }
    },
    modules = {
        -- Cached module discovery results
        list = { "ui", "syntax", "lsp", ... },
        timestamp = os.time()
    },
    plugins = {
        -- Cached plugin detection results
        installed = { "telescope", "nvim-tree", ... },
        timestamp = os.time()
    }
}
```

### Implementation Phases

#### Phase 1: Core Caching Infrastructure (Week 1)

**Objective**: Establish ShaDa-based caching foundation

**Tasks**:
1. Implement cache management module (`lua/black-atom/lib/cache.lua`)
2. Add cache versioning and invalidation logic
3. Create config hashing function for cache keys
4. Add cache read/write operations with error handling

**Deliverables**:
- Cache module with get/set/clear operations
- Config hash generation for cache invalidation
- Error recovery for corrupted cache data

**Expected Impact**: Foundation for 90% performance improvement

#### Phase 2: Highlight Map Caching (Week 2)

**Objective**: Cache computed highlight maps

**Implementation**:
```lua
-- Modified highlights.lua
function M.apply(colors, config)
    local cache = require("black-atom.lib.cache")
    local cache_key = cache.get_key(colors.meta.key, config)
    
    -- Check cache first
    local cached = cache.get_highlights(cache_key)
    if cached then
        highlights.set(cached)
        return
    end
    
    -- Build and cache if not found
    local highlight_map = highlights.build_highlights_map(colors, config)
    cache.set_highlights(cache_key, highlight_map)
    highlights.set(highlight_map)
end
```

**Expected Performance**: Reduce highlight building from ~2.44ms to <0.1ms

#### Phase 3: Module Discovery Caching (Week 3)

**Objective**: Cache file system scanning results

**Implementation**:
```lua
-- Modified files.lua
function M.get_highlight_modules(path, ignore_pattern)
    local cache = require("black-atom.lib.cache")
    
    -- Check module cache
    local cached_modules = cache.get_modules()
    if cached_modules and not cache.should_refresh_modules() then
        return cached_modules
    end
    
    -- Scan and cache if needed
    local modules = M.scan_and_convert_modules(path, ignore_pattern)
    cache.set_modules(modules)
    return modules
end
```

**Expected Performance**: Eliminate 2.29ms file scanning overhead

#### Phase 4: Lazy Plugin Detection (Week 4)

**Objective**: Only load highlights for installed plugins

**Implementation**:
```lua
-- New plugin_detector.lua
function M.detect_installed_plugins()
    local plugins = {}
    local checks = {
        telescope = "telescope",
        nvim_tree = "nvim-tree",
        snacks = "snacks.nvim",
        -- ... other plugin checks
    }
    
    for name, module in pairs(checks) do
        plugins[name] = pcall(require, module)
    end
    
    return plugins
end
```

**Expected Performance**: Reduce module loading by 50-70%

#### Phase 5: Smart Cache Management (Week 5)

**Objective**: Implement cache lifecycle management

**Features**:
1. Auto-invalidation on Black Atom updates
2. `:BlackAtomClearCache` command
3. Cache statistics and debugging
4. Periodic cache cleanup

**Implementation**:
```lua
-- commands.lua additions
vim.api.nvim_create_user_command("BlackAtomClearCache", function()
    require("black-atom.lib.cache").clear()
    vim.notify("Black Atom cache cleared", vim.log.levels.INFO)
end, {})

vim.api.nvim_create_user_command("BlackAtomCacheStats", function()
    local stats = require("black-atom.lib.cache").get_stats()
    vim.notify(vim.inspect(stats), vim.log.levels.INFO)
end, {})
```

## Performance Targets

### Expected Improvements

| Operation | Current Time | Target Time | Improvement |
|-----------|-------------|-------------|-------------|
| Initial theme load | 7-8ms | 7-8ms | 0% (first load) |
| Subsequent loads (same session) | 7-8ms | <0.5ms | 93%+ |
| Theme switching | 7-8ms | <0.5ms | 93%+ |
| Config changes | 7-8ms | 2-3ms | 60%+ |
| Plugin highlight loading | 3-4ms | 1-2ms | 50%+ |

### Memory Impact

- **Cache size**: ~50-100KB per theme configuration
- **ShaDa overhead**: Minimal (built-in Neovim feature)
- **Runtime memory**: No significant increase

## Testing Strategy

### Performance Testing

1. **Baseline Measurement**
   - Record current performance with Snacks profiler
   - Document startup times across different themes
   - Measure theme switching performance

2. **Cache Hit Testing**
   - Verify cache hits on subsequent loads
   - Measure performance with cached data
   - Test cache invalidation scenarios

3. **Edge Case Testing**
   - Corrupted cache recovery
   - Plugin installation/removal
   - Black Atom updates
   - Config changes

### Automated Testing

```lua
-- test/performance_spec.lua
describe("Black Atom Performance", function()
    it("should load cached theme in <1ms", function()
        local start = vim.loop.hrtime()
        require("black-atom").load(theme)
        local elapsed = (vim.loop.hrtime() - start) / 1000000
        assert(elapsed < 1)
    end)
    
    it("should invalidate cache on config change", function()
        -- Test cache invalidation logic
    end)
end)
```

## Implementation Timeline

| Week | Phase | Deliverables | Success Criteria |
|------|-------|--------------|------------------|
| 1 | Core Caching | Cache module, ShaDa integration | Cache read/write working |
| 2 | Highlight Caching | Cached highlight maps | 90%+ reduction in highlight building |
| 3 | Module Caching | Cached module discovery | Eliminate file scanning overhead |
| 4 | Plugin Detection | Lazy loading implementation | 50%+ reduction in module loads |
| 5 | Management | Commands, stats, cleanup | Full cache lifecycle working |
| 6 | Testing & Optimization | Performance validation | Meet all performance targets |

## Risk Assessment

### Technical Risks

1. **ShaDa Size Limits**
   - Mitigation: Implement cache size management
   - Fallback: Use file-based cache if needed

2. **Cache Corruption**
   - Mitigation: Robust error handling and recovery
   - Fallback: Auto-clear corrupted cache

3. **Compatibility Issues**
   - Mitigation: Version checking and gradual rollout
   - Fallback: Feature flag for cache disable

### Performance Risks

1. **Cache Miss Penalty**
   - Mitigation: Optimize cache key generation
   - Monitor: Track cache hit rates

2. **Memory Usage**
   - Mitigation: Implement cache size limits
   - Monitor: Track memory consumption

## Success Metrics

### Primary Metrics
- **Theme load time**: <1ms for cached themes
- **Cache hit rate**: >95% for unchanged configurations
- **User satisfaction**: Positive feedback on performance

### Secondary Metrics
- **Memory usage**: <1MB additional memory
- **Cache size**: <500KB in ShaDa
- **Bug reports**: No increase in issues

## Rollout Strategy

1. **Alpha Testing** (Week 6)
   - Internal testing with development team
   - Performance validation
   - Bug fixes and optimization

2. **Beta Release** (Week 7)
   - Opt-in feature flag
   - Community testing
   - Performance monitoring

3. **General Availability** (Week 8)
   - Enable by default
   - Documentation updates
   - Performance celebration! 🎉

## Conclusion

This optimization plan addresses the core performance issues in Black Atom's theme loading system through intelligent caching using Neovim's built-in ShaDa mechanism. The expected 90%+ performance improvement for cached theme loads will provide users with a significantly better experience, particularly for those who frequently restart Neovim or switch themes.

The phased implementation approach ensures manageable development cycles with clear deliverables and success criteria at each stage. By leveraging Neovim's native features and implementing smart caching strategies, we can achieve dramatic performance improvements without adding external dependencies or significant complexity.

## Appendix: Code Examples

### Cache Module Structure

```lua
-- lua/black-atom/lib/cache.lua
local M = {}

local CACHE_KEY_PREFIX = "black_atom_cache"

-- Get the current git commit hash for the plugin
function M.get_commit_hash()
    local plugin_path = require("black-atom.lib.files").get_plugin_path()
    local handle = io.popen("cd " .. plugin_path .. " && git rev-parse HEAD 2>/dev/null")
    if handle then
        local result = handle:read("*a"):gsub("\n", "")
        handle:close()
        return result ~= "" and result or nil
    end
    return nil
end

function M.init()
    local current_hash = M.get_commit_hash()
    local cache = vim.g[CACHE_KEY_PREFIX] or {
        commit_hash = nil,
        highlights = {},
        modules = {},
        plugins = {}
    }
    
    -- Invalidate cache if commit hash changed
    if cache.commit_hash ~= current_hash then
        cache = {
            commit_hash = current_hash,
            highlights = {},
            modules = {},
            plugins = {}
        }
    end
    
    vim.g[CACHE_KEY_PREFIX] = cache
end

function M.get_key(theme, config)
    -- Generate deterministic hash from theme and config
    local config_str = vim.inspect(config)
    return theme .. ":" .. vim.fn.sha256(config_str)
end

function M.get_highlights(key)
    local cache = vim.g[CACHE_KEY_PREFIX]
    local current_hash = M.get_commit_hash()
    
    -- Check if commit hash has changed
    if cache.commit_hash ~= current_hash then
        M.init()  -- Reinitialize cache
        return nil
    end
    
    local entry = cache.highlights[key]
    if entry and (os.time() - entry.timestamp) < 86400 then -- 24h TTL
        return entry.data
    end
    return nil
end

function M.set_highlights(key, data)
    local cache = vim.g[CACHE_KEY_PREFIX]
    cache.highlights[key] = {
        timestamp = os.time(),
        data = data
    }
    vim.g[CACHE_KEY_PREFIX] = cache
end

-- ... additional methods

return M
```

This implementation plan provides a clear roadmap for achieving significant performance improvements in the Black Atom Neovim theme plugin.