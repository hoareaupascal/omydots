#!/bin/bash

# --- Paths ---
ALACRITTY_ACTIVE="$HOME/.config/alacritty/theme.toml"
ALACRITTY_THEME_DIR="$HOME/omydots/alacritty"
NVIM_THEME_DIR="$HOME/omydots/neovim"
NVIM_TARGET="$HOME/.config/nvim/lua/plugins/colorscheme.lua"
STARSHIP_TARGET="$HOME/.config/starship.toml"
STARSHIP_THEME_DIR="$HOME/omydots/starship"
BTOP_CONF="$HOME/.config/btop/btop.conf"

# --- Functions ---

zellij_config(){
  clear
  cat <<"EOF"
 ________  ____   _______ _____ _____ _____ 
|  _  |  \/  \ \ / /  _  \  _  |_   _/  ___|
| | | | .  . |\ V /| | | | | | | | | \ `--. 
| | | | |\/| | \ / | | | | | | | | |  `--. \
\ \_/ / |  | | | | | |/ /\ \_/ / | | /\__/ /
 \___/\_|  |_/ \_/ |___/  \___/  \_/ \____/ 
         
EOF
  echo -e "\n\e[2m▲ Up  ▼ Down  ↵ Enter: Submit\e[0m"

  # Define the list of theme display names
  options="Blade Runner\nCyber Noir\nDracula\nTokyo Night\nBack"

  # Use fzf for theme selection
  choice=$(echo -e "$options" | fzf --height 15% --layout=reverse --header="Select Starship Theme:")

  case "$choice" in
  "Blade Runner")
    sed -i 's/^theme ".*"/theme "blade-runner"/' ~/.config/zellij/config.kdl
    ;;
  "Cyber Noir")
    sed -i 's/^theme ".*"/theme "cyber-noir"/' ~/.config/zellij/config.kdl
    ;;
  "Dracula")
    sed -i 's/^theme ".*"/theme "dracula"/' ~/.config/zellij/config.kdl
    ;;
  "Tokyo Night")
    sed -i 's/^theme ".*"/theme "tokyonight"/' ~/.config/zellij/config.kdl
    ;;

  *) return ;; # Back or ESC
  esac

  echo "✨ Zellij style Updated to $choice!"
  sleep 1 
}

starship_config() {
  clear
  cat <<"EOF"
 ________  ____   _______ _____ _____ _____ 
|  _  |  \/  \ \ / /  _  \  _  |_   _/  ___|
| | | | .  . |\ V /| | | | | | | | | \ `--. 
| | | | |\/| | \ / | | | | | | | | |  `--. \
\ \_/ / |  | | | | | |/ /\ \_/ / | | /\__/ /
 \___/\_|  |_/ \_/ |___/  \___/  \_/ \____/ 
         
EOF
  echo -e "\n\e[2m▲ Up  ▼ Down  ↵ Enter: Submit\e[0m"

  # Define the list of theme display names
  options="Rose Pine Moon\nTokyo Night\nCatpuccin Mocha\nBracketed Segments\nJetpack\nBack"

  # Use fzf for theme selection
  choice=$(echo -e "$options" | fzf --height 15% --layout=reverse --header="Select Starship Theme:")

  case "$choice" in
  "Rose Pine Moon")
    s_file="rose-pine-moon.toml"
    ;;
  "Tokyo Night")
    s_file="tokyonight.toml"
    ;;
  "Catpuccin Mocha")
    s_file="catpuccin-mocha.toml"
    ;;
  "Bracketed Segments")
    s_file="bracketed.toml"
    ;;
  "Jetpack")
    s_file="jetpack.toml"
    ;;

  *) return ;; # Back or ESC
  esac

  cp "$STARSHIP_THEME_DIR/$s_file" "$STARSHIP_TARGET"
  echo "✨ Starship style Updated to $choice!"
  sleep 1

}

change_theme() {
  clear
  cat <<"EOF"
 ________  ____   _______ _____ _____ _____ 
|  _  |  \/  \ \ / /  _  \  _  |_   _/  ___|
| | | | .  . |\ V /| | | | | | | | | \ `--. 
| | | | |\/| | \ / | | | | | | | | |  `--. \
\ \_/ / |  | | | | | |/ /\ \_/ / | | /\__/ /
 \___/\_|  |_/ \_/ |___/  \___/  \_/ \____/ 
         
EOF
  echo -e "\n\e[2m▲ Up  ▼ Down  ↵ Enter: Submit\e[0m"

  # Define the list of theme display names
  options="Rose Pine Moon\nTokyo Night\nCatpuccin Mocha\nVantablack\nCity 783\nCpunk\nBack"

  # Use fzf for theme selection
  choice=$(echo -e "$options" | fzf --height 15% --layout=reverse --header="Select Your Aesthetic:")

  case "$choice" in
  "Rose Pine Moon")
    v_name="rosepine_moon"
    a_theme="rose-pine-moon.toml"
    n_theme="rose-pine-moon.lua"
    b_theme="rose-pine-moon.theme"
    ;;
  "Tokyo Night")
    v_name="tokyonight"
    a_theme="tokyo-night.toml"
    n_theme="tokyo-night.lua"
    b_theme="tokyo-night.theme"
    ;;
  "Catpuccin Mocha")
    v_name="tokyonight"
    a_theme="catpuccin-mocha.toml"
    n_theme="catpuccin-mocha.lua"
    b_theme="tokyo-night.theme"
    ;;
  "Vantablack")
    v_name="city-783"
    a_theme="vantablack.toml"
    n_theme="vantablack.lua"
    b_theme="vantablack.theme"
    ;;
  "City 783")
    v_name="city-783"
    a_theme="city-783.toml"
    n_theme="city-783.lua"
    b_theme="city-783.theme"
    ;;
  "Cpunk")
    v_name="cpunk"
    a_theme="cpunk.toml"
    n_theme="cpunk.lua"
    b_theme="cpunk.theme"
    ;;

  *) return ;; # Back or ESC
  esac

  # Apply Starship & Kitty
  cp "$ALACRITTY_THEME_DIR/$a_theme" "$ALACRITTY_ACTIVE"
  cp "$NVIM_THEME_DIR/$n_theme" "$NVIM_TARGET"
  sed -i "s|^color_theme =.*|color_theme = \"$b_theme\"|" "$BTOP_CONF"
  
  echo "✨ Style Updated to $choice!"
  sleep 1
}

# --- Main Logic ---

while true; do
  clear
  cat <<"EOF"
 ________  ____   _______ _____ _____ _____ 
|  _  |  \/  \ \ / /  _  \  _  |_   _/  ___|
| | | | .  . |\ V /| | | | | | | | | \ `--. 
| | | | |\/| | \ / | | | | | | | | |  `--. \
\ \_/ / |  | | | | | |/ /\ \_/ / | | /\__/ /
 \___/\_|  |_/ \_/ |___/  \___/  \_/ \____/ 

EOF
  echo -e "\n\e[2m▲ Up  ▼ Down  ↵ Enter: Submit\e[0m"

  # Define Main Menu Options
  main_options="1. Themes Manager\n2. Starship\n3. Zellij\n4. Exit"

  # Use FZF for the Main Menu
  # --prompt sets the text next to the cursor
  sel=$(echo -e "$main_options" | fzf --height 10% --reverse --prompt="Action > ")

  case "$sel" in
  *"Themes Manager") change_theme ;;
  *"Starship") starship_config ;;
  *"Zellij") zellij_config ;;
  *"Exit" | "")
    echo "See ya!"
    break
    ;;
  esac

done

