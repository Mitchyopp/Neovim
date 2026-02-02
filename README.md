# Welcome to my Neovim config!

This is a basic neovim config using lazy.nvim.

## Notes

> [!WARNING]
> If git clone fails or the plugins don't install then make sure you have SSH setup.

> [!TIP]
> Make sure you don't have a config located already at /home/YourUser/.config/nvim (The install script does this automatically)
> If you do you can make it a backup with:
```mv $HOME/.config/nvim $HOME/.config/nvim_backup```

## Install
Install script (Always read a script before executing it to make sure it's safe!)

```curl -fsSL https://raw.githubusercontent.com/Mitchyopp/Neovim/main/install.sh | bash```

Manual clone

```git clone https://github.com/Mitchyopp/Neovim $HOME/.config/nvim```

Then just run `nvim` and once inside `:so`

Enjoy!
