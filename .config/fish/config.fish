if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
end

# aliases
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias v="nvim"
alias vc="env GIT_DIR=$HOME/.dotfiles GIT_WORK_TREE=$HOME nvim $HOME/.config"
