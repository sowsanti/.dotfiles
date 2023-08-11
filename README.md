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
This means the command`dotfiles` can be used in any directory to interact with the dotfiles git repo.
Basically, it's like the git command but it sets up the work-tree and the actual place of the git directory.

Also, this next line is convenient to hide untracked files from the `git status` command (now `dotfiles status`)
<br>
`dotfiles config status.showUntrackedFiles no`

## TODOs

- [ ] Fix nvim fugitive integreation with this bare repo
- [ ] Add alias for bash in the readme
