#!/usr/bin/env bash

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color
BOLD='\033[1m'

echo "\n${BOLD}🔍 Running checks...${NC}\n"

# Luacheck - exclude template files
echo "${BLUE}▶ Running luacheck...${NC}"
if luacheck . --exclude-files '**/*.template.lua'; then
    echo "${GREEN}✓ Luacheck passed${NC}\n"
else
    echo "${RED}✗ Luacheck failed${NC}\n"
    exit 1
fi

# Type checking - exclude template files
echo "${BLUE}▶ Running type checking...${NC}"
# Find all lua files excluding templates
LUA_FILES=$(find . -name "*.lua" -not -name "*.template.lua")
if lua-language-server --loglevel=warn --logpath=. --check $LUA_FILES; then
    echo "${GREEN}✓ Type checking passed${NC}\n"
else
    echo "${RED}✗ Type checking failed${NC}\n"
    exit 1
fi

# Formatting - exclude template files
echo "${BLUE}▶ Running formatting for lua files...${NC}"
if find lua -name "*.lua" -not -name "*.template.lua" | xargs stylua; then
    echo "${GREEN}✓ Formatting completed${NC}\n"
else
    echo "${RED}✗ Formatting failed${NC}\n"
    exit 1
fi

# Success message
echo "${GREEN}${BOLD}✨ All checks passed!${NC}\n"
