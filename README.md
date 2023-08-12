# Personnal configs

This is a bare repo, clone it somewhere like $HOME/.dotfiles with the --bare flag.
<br>
`git clone --bare git@github.com:sowsanti/.dotfiles.git $HOME/.dotfiles`
<br>
<br>
Also, add a alias to the shell to use this repo, something like:
<br>
**fish:**
`alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"`<br>
**bash:** TODO
<br>
This means the command `dotfiles` can be used in any directory to interact with the dotfiles git repo.
Basically, it's like the git command but it sets up the work-tree and the actual place of the git directory.
<br>
The next alias is used to open the config files with a correct git worktree for plugins like fugitive.
<br>
**fish:**
`alias vc="env GIT_DIR=$HOME/dotfiles GIT_WORK_TREE=$HOME nvim $HOME/.config"`<br>
**bash:** TODO
<br>
<br>
Finaly, execute this command to set the worktree of the bare repo to the home directory.
Thats, for now, the solution I found to fix many git plugins issues with the bare repo.
<br>
`dotfiles config core.worktree $HOME`

Also, this next line is convenient to hide untracked files from the `git status` command (now `dotfiles status`)
<br>
`dotfiles config status.showUntrackedFiles no`

## TODOs

- [ ] Add alias for bash in the readme
