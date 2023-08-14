if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
end

# aliases
alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"
alias v="nvim"
function vc
    if string match -q -r -- -h $argv
        echo "Usage: vc [-o] [-m] [file]"
        echo "Options:"
        echo "  -o    Change to the home directory before running nvim"
        echo "  -m    Open Neovim with \$HOME directory instead of \$HOME/.config"
        echo "  -h    Show this help message"
        return
    end

    set -l cd_option false
    set -l mv_option false

    for arg in $argv
        switch $arg
            case -o
                set cd_option true
                set argv (echo $argv | sed 's/\-o[[:space:]]*//g')
            case -m
                set mv_option true
                set argv (echo $argv | sed 's/\-m[[:space:]]*//g')
        end
    end

    if $cd_option
        cd ~
    end

    if $mv_option
        env GIT_DIR=$HOME/dotfiles GIT_WORK_TREE=$HOME nvim $HOME/$argv
    else
        if count $argv > /dev/null
            env GIT_DIR=$HOME/dotfiles GIT_WORK_TREE=$HOME nvim $HOME/.config/$argv
        else
            env GIT_DIR=$HOME/dotfiles GIT_WORK_TREE=$HOME nvim $HOME/.config/
        end
    end
end
