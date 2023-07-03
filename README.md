# kpetrucena dotfiles

These are my personal dotfiles.
Feel free to look around but don't expect anything good.

## getting started

Create a .dotfiles folder:

```
git init --bare $HOME/.dotfiles
```

Crate an alias `dotfiles` so you don't need to type it all over again:

```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME
```

Set git status to hide untracked files:

```
dotfiles config --local status.showUntrackedFiles no
```

## usage

Now you can use regular git commands such as:

```
dotfiles status
dotfiles add .config/neovim
dotfiles commit -m "add neovim"
dotfiles push
```

## setup environment in a new computer

Clone the github repository:

```
git clone --bare https://github.com/KrisjanisP/dotfiles.git $HOME/.dotfiles
```

Checkout the actual content from the git repository:

```
dotfiles checkout
```
