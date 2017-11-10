# VimIDE

## Add submodule
```
git submodule add https://github.com/vim-scripts/The-NERD-tree.git bundle/the-nerd-tree
git submodule add https://github.com/sontek/rope-vim.git bundle/rope-vim
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
```

### Above submodule init&update command could be replaced by this one
```
git submodule update --init --recursive
```
or
```
git submodule foreach --recursive git submodule update --init
```
The result is same but just the 2nd one will step into each directory.



### In .vimrc, add the following codes to implement press TAB to get 4 white spaces
```
set ts=4  " ts is tabstop, which is to set the width ofTAB as 4
set expandtab
```

### For the saved files, we could use the following approach to exchange between white space and TAB:
#### TAB to white space
```
:set ts=4
:set expandtab
:%retab!
```

#### white space to TAB
```
:set ts=4
:set noexpandtab
:%retab! 
" ! is to handle all TAB;
" NO !, only handle TAB of line header
```
