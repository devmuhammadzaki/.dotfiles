# Welcome to my dotfiles!

These are my little and most important configs for my dev setup, and I manage them using symlinks.

## Installing on a fresh machine

1. Clone the repo and `cd` in there.
2. ln -s each file to it's corresponding location
   ```bash
   ln -s init.lua ~/.config/nvim/init.lua
   ln -s kitty.conf ~/.config/kitty/kitty.conf
   ln -s config ~/.config/i3/config
   ln -s .zshrc ~/.zshrc
   ```

and you're good to go ;)
