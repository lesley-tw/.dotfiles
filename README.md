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

# Neovim Shortcuts

### customized shortcuts
  - Switch to next tab
    - In `NORMAL` mode, press `Ctrl + e`
  - Switch to previous tab
    - In `NORMAL` mode, press `Ctrl + w`
  - Close tab
    - In `NORMAL` mode, press `Ctrl + q`
  - Auto compile file
    - In `NORMAL` mode, press `F5`
  - Save file
    - In `INSERT` mode, press `Ctrl + s`

### tpope/vim-surround
  - `ds`: Delete brackets
    - Press `ds` `"`
    
      ```
      "Hello world!"
      ```
      to change it to
      ```
      Hello world!
      ```
  - `cs`: Replace brackets
    - Press `cs` `"(`
      ```
      "Hello world!"
      ```
      to change it to
      ```
      (Hello world!)
      ```
  - `cS`: Replace brackets and add text in new line
    - Press `cS` `"{`
      ```
      "Hello world!"
      ```
      to change it to
      ```
      {
          Hello world!
      }
      ```
  - `ys`: Add brackets
    - With the cursor on "Hello", press `ys` `w` `[`
      ```
      Hello world!
      ```
      to change it to
      ```
      [Hello] world!
      ```
  - `yS`: Add brackets and add text in new line
    - With the cursor on "Hello", press `ys` `w` `[`
      ```
      Hello world!
      ```
      to change it to
      ```
      [
          Hello
      ] world!
      ```

### preservim/nerdtree
 - Toggle NERDTree
   - In `NORMAL` mode, press `-`

### terryma/vim-multiple-cursors
 - Use multiple cursors
   - Select lines in `VISUAL` mode, press `Ctrl + n`

### scrooloose/nerdcommenter
  - Add comments
    - Select lines in `VISUAL` mode, press `\` `cc`
  - Uncomments
    - Select lines in `VISUAL` mode, press `\` `cu`

### majutsushi/tagbar
 - Toggle NERDTree
    - In `NORMAL` mode, press `=`

### vim-gutentags
 - Go to tag/function/class
    - In `NORMAL` mode, press `Ctrl + ]`
### junegunn/fzf
 - Search lines in all buffers
    - In `NORMAL` mode, press `\` `fl`
 - Search lines in current buffer
    - In `NORMAL` mode, press `\` `fb`
 - Search files
    - In `NORMAL` mode, press `\` `ff`
 - Search git files (git ls-files)
    - In `NORMAL` mode, press `\` `fg`
 - Search git files (git status)
    - In `NORMAL` mode, press `\` `f?`
 - Use tag to search files
    - In `NORMAL` mode, press `\` `ft`
 - Use tag to search files
    - In `NORMAL` mode, press `\` `ft`
 - Search git commits (Requires fugitive.vim)
    - In `NORMAL` mode, press `\` `fc`
 - Search MRU file
    - In `NORMAL` mode, press `\` `fh`
 - Search history commands
    - In `NORMAL` mode, press `\` `fh?`
