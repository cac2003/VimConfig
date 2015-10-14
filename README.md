# VimConfig: My vim configuration

Dependency:
  1. ag: the silver searcher 
  2. ctags
  3. cscope
  4. python2.7+


Usage:
  1. Install vundle from git: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  2. Download powerline fonts from https://github.com/powerline/fontsto. Copy the fonts to ~/.fonts, and then run fc-cache -fv to install the fonts
  3. Pull this repo to ~/.vim 
  4. Make a soft link ~/.vimrc to ~/.vim/vimrc 
  5. Install plugins by running ":VundleInstall" in vim
  6. goto YCM dir and run "build.py --clang-completer" to enable semantic completion
  7. To install tmuxline, select a tmuxline theme by running ":Tmuxline theme" in vim, store the theme into a file by running ":TmuxlineSnapshot file", and finally source this file in ~/.tmux.conf, shown as follows. One can also directly use the one provided in this repo.

    set -g default-terminal "screen-256color"
    set-window-option -g mode-keys vi
    bind-key -t vi-copy 'v' begin-selection
    bind-key -t vi-copy 'y' copy-selection
    
    #split panel
    bind v split-window -h
    bind s split-window -v
    
    #switch panels
    bind k selectp -U # switch to panel Up
    bind j selectp -D # switch to panel Down 
    bind h selectp -L # switch to panel Left
    bind l selectp -R # switch to panel Right
    
    #set-option -g pane-border-fg magenta
    #set-option -g pane-active-border-fg green
    #set-option -g pane-active-border-bg default
    
    #set-option -g pane-border-style fg=magenta
    #set-option -g pane-active-border-style fg=magenta
    #set-option -g pane-active-border-style bg=default
    
    source-file ~/.vim/tmuxline.sh
    
    set -g pane-border-fg magenta
    set -g pane-active-border-fg green
    set -g pane-active-border-bg magenta

  8. add the following to ~/.bashrc. To install another shell_prompt theme, one can follow the way similar to the above method.
    alias ctags='ctags -R --fields=+iaS --extra=+q --sort=yes --c++-kinds=+p'
    source /home/caiqc/.vim/shell_prompt.sh
    alias tmux='TERM=xterm-256color /usr/bin/tmux'
    stty -ixon
    stty -ixany

