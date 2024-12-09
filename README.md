# Welcome to my dotfiles!

These are my little and most important configs for my dev setup, and I manage them using symlinks.

## Installing on a fresh machine

1. Clone the repo and `cd` in there.
2. Install the required stuff for the dev env setup:
   ```bash
   chmod +x dev-env-setup.sh
   sudo ./dev-env-setup.sh
   ```
3. symlink each file to it's corresponding location:
   ```bash
   ln -s ~/.dotfiles/init.lua ~/.config/nvim/init.lua
   ln -s ~/.dotfiles/kitty.conf ~/.config/kitty/kitty.conf
   ln -s ~/.dotfiles/config ~/.config/i3/config
   ln -s ~/.dotfiles/.zshrc ~/.zshrc
   ln -s ~/.dotfiles/settings.json ~/.config/Code/User/settings.json
   sudo ln -s ~/.dotfiles/i3status.conf /etc/i3status.conf
   ```

and you're good to go ;)
