# Neovim Configuration

This repository contains my personal Neovim configuration, inspired by [Josean Martinez's](https://github.com/josean-dev/dev-environment-files) setup. It's organized to be modular and maintainable.

## Structure

```
.
├── init.lua                 # Main configuration entry point
└── lua/
    └── name/               # Configuration namespace
        ├── core/           # Core Neovim configurations
        │   ├── colorscheme # Color scheme settings
        │   ├── keymaps     # Custom keybindings
        │   └── settings    # General Neovim settings
        ├── plugins/        # Plugin-specific configurations
        └── plugins-setup.lua # Plugin manager setup (Packer)
```

## Setup

### Prerequisites

- Neovim (>= 0.8.0)
- Git
- [Packer](https://github.com/wbthomason/packer.nvim) (Plugin Manager)

### Installation

1. Back up your existing Neovim configuration if you have one:
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clone this repository:
```bash
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim
```

3. Open Neovim and install plugins:
```vim
:PackerSync
```

## Configuration Details

### Core Configuration

The `core` directory contains essential Neovim settings:
- Color scheme configuration
- Basic editor settings
- Custom keybindings

### Plugins

Plugin configurations are separated into individual files in the `plugins` directory for better organization and maintenance.

The `plugins-setup.lua` file manages plugin installation using Packer.

## Customization

To modify the configuration:
1. Edit files in the `core` directory for basic Neovim settings
2. Add or modify plugin configurations in the `plugins` directory
3. Update `plugins-setup.lua` to add or remove plugins

## Credits

This configuration is inspired by [Josean Martinez's](https://github.com/josean-dev/dev-environment-files) Neovim setup.
