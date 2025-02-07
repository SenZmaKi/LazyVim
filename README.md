# Installation

- Common Dependencies

  - [Neovim (Duuh)](https://github.com/neovim/neovim)
  - [Ripgrep](https://github.com/BurntSushi/ripgrep)
  - A C/C++ compiler (I use [Clang](https://github.com/llvm/llvm-project/releases) btw)
  - Probably some other shii I forgorr 💀

- Windows (Command Prompt)

  - Install Dependencies

  ```
  winget install Neovim.Neovim
  winget install BurntSushi.ripgrep.MSVC
  winget install LLVM.LLVM
  ```

  ```
  git clone https://github.com/SenZmaKi/LazyVim %LOCALAPPDATA%\nvim && nvim
  ```

- Linux/Mac

```
git clone https://github.com/SenZmaKi/LazyVim ~/.config/nvim && nvim
```

