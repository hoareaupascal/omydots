#!/bin/bash

# --- Setup Paths ---
REPO_ROOT=$(pwd)
CONFIG_DEST="$HOME/.config"

# --- Colors for Output ---
BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${BLUE}🚀 Starting omydots installation...${NC}"

# 1. Alacritty Setup (Direct Copy)
echo -e "${YELLOW}Configuring Alacritty...${NC}"
mkdir -p "$CONFIG_DEST/alacritty"
if [ -d "$REPO_ROOT/alacritty" ]; then
    # This copies your alacritty.toml AND all theme files into ~/.config/alacritty/
    cp -r "$REPO_ROOT/alacritty/." "$CONFIG_DEST/alacritty/"
    echo "  - Alacritty themes and config installed."
else
    echo "  - Error: Alacritty folder not found in repo."
fi

# 2. Btop Setup (Themes Folder)
echo -e "${YELLOW}Configuring Btop...${NC}"
mkdir -p "$CONFIG_DEST/btop/themes"
if [ -d "$REPO_ROOT/btop" ]; then
    # This copies only the themes into the correct subfolder
    cp -r "$REPO_ROOT/btop/." "$CONFIG_DEST/btop/themes/"
    echo "  - Btop themes installed."
else
    echo "  - Error: Btop folder not found in repo."
fi

# 3. Neovim Setup (Verification Only)
echo -e "${YELLOW}Checking Neovim theme files...${NC}"
if [ -d "$REPO_ROOT/neovim" ]; then
    echo "  - Neovim themes located (will be synced via omydots script)."
else
    echo "  - Error: Neovim folder not found in repo."
fi

# 3. Starship Setup (Verification Only)
echo -e "${YELLOW}Checking Starship theme files...${NC}"
if [ -d "$REPO_ROOT/starship" ]; then
    echo "  - Starship themes located (will be synced via omydots script)."
else
    echo "  - Error: Starship folder not found in repo."
fi

# 4. Global Command Setup
echo -e "${YELLOW}Finalizing...${NC}"
# Make the main switcher script executable
if [ -f "$REPO_ROOT/omydots.sh" ]; then
    chmod +x "$REPO_ROOT/omydots.sh"
    # Create the symlink so the user can just type 'omydots'
    sudo ln -sf "$REPO_ROOT/omydots.sh" /usr/local/bin/omydots
    echo -e "${GREEN}✅ 'omydots' command is now global!${NC}"
else
    echo -e "${YELLOW}⚠️  Note: omydots.sh not found. Remember to name your switcher script 'omydots.sh' for the symlink to work.${NC}"
fi

echo -e "\n${GREEN}Installation finished! Type 'omydots' to change your theme.${NC}"