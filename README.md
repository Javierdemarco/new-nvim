# README

This is a guide to show all steps neccesarry to install my distrubution of Neovim in Windows

## Install Neovim

One of two options:

1. Download an install [msi](https://github.com/neovim/neovim/releases/latest/download/nvim-win64.msi)
2. Execute this is powershell
    ```powershell
    winget install Neovim.Neovim
    ```

## Install Python

Go to [Python Website](https://www.python.org/) and install Python through there

## Packer

If packer doesn't install automatically, execute this command in powershell

```powershell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

## Lazygit

Lazygit binary is on bin/ directory, if something goes wrong you can download it from [LazyGit](https://github.com/jesseduffield/lazygit/releases)

## Git

Install Git from this [website](https://git-scm.com/download/win)

## NodeJs

Install NodeJs from this [website](https://nodejs.org/dist/v20.3.1/node-v20.3.1-x64.msi)
