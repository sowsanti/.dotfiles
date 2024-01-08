# Change the theme of kitty and nvim with specified argument (dark or light)

# Check if argument is passed
if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    echo "Usage: change-theme.sh [dark|light]"
    exit 1
fi

# Check if argument is valid
if [ "$1" != "dark" ] && [ "$1" != "light" ]; then
    echo "Invalid argument"
    echo "Usage: change-theme.sh [dark|light]"
    exit 1
fi

# Change kitty theme 
# with kitty +kitten themes --reload-in=all Catppuccin-Mocha if dark and Catppuccin-Latte if light
if [ "$1" == "dark" ]; then
    echo "vim.opt.background = 'dark'" > ~/.config/nvim/lua/sansugranes/curr-theme.lua
    kitty +kitten themes --reload-in=all Catppuccin-Mocha
elif [ "$1" == "light" ]; then
    echo "vim.opt.background = 'light'" > ~/.config/nvim/lua/sansugranes/curr-theme.lua
    kitty +kitten themes --reload-in=all Catppuccin-Latte
fi

# Reload nvim by sourcing init.lua
nvim --headless +luafile ~/.config/nvim/init.lua +qa
