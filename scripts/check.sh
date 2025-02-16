#!/usr/bin/env bash

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color
BOLD='\033[1m'

echo "\n${BOLD}🔍 Running checks...${NC}\n"

# Luacheck
echo "${BLUE}▶ Running luacheck...${NC}"
if luacheck .; then
    echo "${GREEN}✓ Luacheck passed${NC}\n"
else
    echo "${RED}✗ Luacheck failed${NC}\n"
    exit 1
fi

# Type checking
echo "${BLUE}▶ Running type checking...${NC}"
if lua-language-server --loglevel=warn --logpath=. --check .; then
    echo "${GREEN}✓ Type checking passed${NC}\n"
else
    echo "${RED}✗ Type checking failed${NC}\n"
    exit 1
fi

# Formatting
echo "${BLUE}▶ Running formatting for lua files...${NC}"
if stylua lua/**/*.lua; then
    echo "${GREEN}✓ Formatting completed${NC}\n"
else
    echo "${RED}✗ Formatting failed${NC}\n"
    exit 1
fi

# Success message
echo  "${GREEN}${BOLD}✨ All checks passed!${NC}\n"
