# Set Up

* Create a .dotfiles folder to track dotfiles
```bash
git init --bare $HOME/.dotfiles
```

* Add an alias `dotfiles` to your `.zshrc`
```bash
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

* Set git status to hide untracked files
```bash
dotfiles config --local status.showUntrackedFiles no
```

# Usage

```bash
dotfiles status

# .zshrc
dotfiles add $HOME/.zshrc
dotfiles commit -m 'feat: add .zshrc'

# ZSH_CONFIG
dotfiles add $HOME/ZSH_CONFIG/*
dotfiles commit -m 'feat: add ZSH_CONFIG files'

# nvim
dotfiles add $HOME/.config/nvim/coc-settings.json
dotfiles add $HOME/.config/nvim/init.vim
dotfiles commit -m 'feat: add coc-settings, init.vim'

dotfiles remote add origin git@github.com:USERNAME/.dotfiles.git
dotfiles push -u origin master
```
