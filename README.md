# ashref.tn Configuration Files

**macOS terminal setup with tmux, zsh, and ghostty**

## Structure
```
├── ghostty/config              # Glass translucent gray, Catppuccin theme, font size 14
├── tmux/.tmux.conf            # Prefix Ctrl+A, vim navigation, theme, plugins
├── zsh/.zshrc                 # Git/Docker aliases, zoxide integration
└── workspaces/ashref.tn/      # Custom tmux workspace script
```

## Deploy to macOS
```bash
# Copy configs
cp tmux/.tmux.conf ~/.tmux.conf
mkdir -p ~/.config/ghostty && cp ghostty/config ~/.config/ghostty/
cp zsh/.zshrc ~/.zshrc
mkdir -p ~/workspaces/ashref.tn && cp workspaces/ashref.tn/* ~/workspaces/ashref.tn/
chmod +x ~/workspaces/ashref.tn/start_ashref_workspace.sh

# Reload
source ~/.zshrc
tmux source ~/.tmux.conf
```

**Note:** Restart Ghostty after deployment. Press `Ctrl+A` then `I` in tmux to install plugins. Use `Ctrl+H/J/K/L` for seamless vim/tmux navigation.
