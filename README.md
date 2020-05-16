# Introduction

Here you can different dotfiles, for instance: .vim directory and my customization.

# Installation

If you've already configured VIM, please first of all create a backup:

## VIM installation

```bash
mv ~/.vim/ ~/.oldvim  # Back up current configuration if exists!
git clone https://github.com/greatbahram/dotfiles.git
cp -r  dotfiles/.vim ~/
# Install vim-plug program
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Then, open vim and enter :PlugInstall
```

*Enjoy it*!

# Requirement

* Git

# Creator

This repository was created by and is maintained by **Bahram Aghaei**.

* https://twitter.com/greatbahram
* https://github.com/greatbahram
