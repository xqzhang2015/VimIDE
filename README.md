# VimIDE

## Add submodule
git submodule add https://github.com/vim-scripts/The-NERD-tree.git bundle/the-nerd-tree
git submodule add https://github.com/sontek/rope-vim.git bundle/rope-vim
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

### Above submodule init&update command could be replaced by this one
git submodule update --init --recursive
or
git submodule foreach --recursive git submodule update --init
The result is same but just the 2nd one will step into each directory.
