# Neovim Configuration

This is my personal Neovim configuration.

## Structure

- `init.lua`: Main entry point, loads configuration and plugins.
- `lua/config/`: Contains configuration modules.
  - `options.lua`: Sets Neovim options.
  - `keymap.lua`: Defines key mappings.
  - `update.lua`: Handles plugin updates.
  - `lua/plugin/`: Contains plugin configurations.
  - `colorscheme.lua`: Sets the color scheme.
  - `statusline.lua`: Configures the status line.
  - `navigation.lua`: Sets up navigation (Oil, Harpoon).
  - `lsp.lua`: Configures LSP (Language Server Protocol) support.
  - `tmux.lua`: Integrates with tmux.
  - `treesitter.lua`: Configures nvim-treesitter.

## Installation
```bash
git clone https://github.com/djalil45800/neovim.git
```

## Requirements

- Neovim >= 0.12
- A Nerd Font (for icons in the statusline and other plugins)
- Depending on the plugins, you may need:
  - `ripgrep`
  - `fd` or `find`
  - Language servers for LSP (installed via :LspInstall or manually)

## Key Features

- Minimalist
- LSP support for code completion and diagnostics
- Syntax highlighting via treesitter
- Integrated terminal and tmux navigation

## Plugin Manager

This configuration uses Neovim's native package manager (**vim.pack**) available in Neovim 0.12+.

## Usage

After installing, open Neovim and run `:PackUpdate` to update plugins.

## Customization

Feel free to fork and adjust the configuration to your needs.
