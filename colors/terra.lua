for k in pairs(package.loaded) do
    if k:match(".*terra-core.*") then
        package.loaded[k] = nil
    end
end

require("terra-core").setup({})
require("terra-core").colorscheme()
