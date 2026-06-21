My dotfiles.

<img width="1280" alt="image" src="https://github.com/user-attachments/assets/1e7cb1a6-43f6-4cac-8edc-e4b08234ddc4" />

```bash
# git clone
git clone https://github.com/kodydeda4/dotfiles
cd dotfiles

# GNU Stow "config" into `~/.config`
stow config --target="$HOME/.config"

# GNU Stow "zsh" into ~/.zshrc etc
stow --target ~ zsh

# Install yazi tokyo-night theme
git clone https://github.com/BennyOe/tokyo-night.yazi.git ~/.config/yazi/flavors/tokyo-night.yazi

# Tmux install tmp
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```
