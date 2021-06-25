# ohartl's dotfiles

My minimal user configuration for unix based system.
I use some of these dotfiles on various linux, macos, windows systems and they seem to be pretty flexible.

I use this ansible role [geerlingguy.dotfiles](https://github.com/geerlingguy/ansible-role-dotfiles) to deploy and update my dotfiles on systems I use.

## Making local customizations

You can make local customizations for some programs by creating these files:

* `bash`
  * Before init `~/.bashrc_before.local`
  * After init `~/.bashrc_after.local`
* `zsh`
  * Before init `~/.zshrc_before.local`
  * After init `~/.zshrc_after.local`
* Aliases for `bash` & `zsh`
  * `~/.aliases.local`
* Envirnoment variables for `bash` & `zsh`
  * `~/.vars.local`
* `vim`
  * `~/.vimrc.local`
* `git`
  * `~/.gitconfig.local`
