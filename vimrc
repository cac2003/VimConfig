" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
" set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1

" following are the genral settings"
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
" Spaces are used in indents with the '>' and '<' commands
" and when 'autoindent' is on. To insert a real tab when
" 'expandtab' is on, use CTRL-V <Tab>.

set smarttab        " When on, a <Tab> in front of a line inserts blanks
" according to 'shiftwidth'. 'tabstop' is used in other
" places. A <BS> will delete a 'shiftwidth' worth of space
" at the start of the line.

set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

"set showmatch       " When a bracket is inserted, briefly jump to the matching
" one. The jump is only done if the match can be seen on the
" screen. The time to show the match can be set with
" 'matchtime'.

set hlsearch        " When there is a previous search pattern, highlight all
" its matches.

set incsearch       " While typing a search command, show immediately where the
" so far typed pattern matches.

set ignorecase      " Ignore case in search patterns.

set smartcase       " Override the 'ignorecase' option if the search pattern
" contains upper case characters.

set backspace=indent,eol,start
"set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
" and CTRL-U in Insert mode. This is a list of items,
" separated by commas. Each item allows a way to backspace
" over something.

set autoindent      " Copy indent from current line when starting a new line
" (typing <CR> in Insert mode or when using the "o" or "O"
" command).

set textwidth=79    " Maximum width of text that is being inserted. A longer
" line will be broken after white space to get this width.

set formatoptions=l,c,q,r,t " This is a sequence of letters which describes how
" automatic formatting is to be done.
"
" letter    meaning when present in 'formatoptions'
" ------    ---------------------------------------
" c         Auto-wrap comments using textwidth, inserting
"           the current comment leader automatically.
" q         Allow formatting of comments with "gq".
" r         Automatically insert the current comment leader
"           after hitting <Enter> in Insert mode. 
" t         Auto-wrap text using textwidth (does not apply
"           to comments)

set ruler           " Show the line and column number of the cursor position,
" separated by a comma.

set background=dark " When set to "dark", Vim will try to use colors that look
" good on a dark background. When set to "light", Vim will
" try to use colors that look good on a light background.
" Any other value is illegal.

set history=1000

set backupdir=~/.backup
set directory=~/.backup

set mouse=a         " Enable the use of the mouse.

syntax on
"set synmaxcol=80

if has("gui_running")
    "set lines=40 columns=120
    "set guifont=Ubuntu\ Mono\ 14
    "set guifont=PowerLine\ Consolas\ 12
    set guifont=Sauce\ Code\ PowerLine\ Light\ 13
    "set guifont=YaHei\ Consolas\ Hybrid\ 12
endif

"let g:C_Ctrl_j = 'off'
"let g:BASH_Ctrl_j = 'off'
set pastetoggle=<F9>
set selectmode+="key" 

"==============================================================================
"keyboard mapping
"==============================================================================
let mapleader = ","
vnoremap  <silent> k gkzz
vnoremap  <silent> j gjzz
vnoremap  <silent> 0 g0
vnoremap  <silent> $ g$
nnoremap  <silent> k gkzz
nnoremap  <silent> j gjzz
nnoremap  <silent> 0 g0
nnoremap  <silent> $ g$
nnoremap <silent> <c-k> <C-W>k
nnoremap <silent> <c-j> <C-W>j
nnoremap <silent> <c-h> <C-W>h
nnoremap <silent> <c-l> <C-W>l

noremap <F8> :BD<CR>

nnoremap <Right> <C-W>>
nnoremap <Left> <C-W><
nnoremap <Up> <C-W>+
nnoremap <Down> <C-W>-

"cnoremap <C-c> <ESC>
"
"inoremap <C-c> <ESC>
inoremap <c-s-s> <ESC>:w<CR>
noremap <c-s-s> :w<CR>

inoremap <C-cr> <ESC>o
vnoremap <C-c> "+y
inoremap <C-v> <C-R>+
inoremap <C-z> <ESC>ui

"navigate through marks
"map <silent> <F2> ]`         
"nnoremap <F2> :Ag <C-r><C-w>
inoremap <F3> <ESC>:%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
nnoremap <F3> :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
vnoremap <F3> <ESC>:'<,'>s/\<<C-r><C-w>\>//gc<Left><Left><Left>

set scrolloff=10
set synmaxcol=200
autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>


" backspace is automatically mapped to <c-h>
"inoremap <c-s-s> <c-u> 
"noremap! <c-d> <C-o>D
noremap! <c-d> <DEL>
noremap! <c-a> <Home>
noremap! <c-e> <End>

noremap! <c-h> <Left>
noremap! <c-j> <Down>
noremap! <c-k> <Up>
noremap! <c-l> <Right>
"inoremap <c-w> <C-o>w
noremap! <c-b> <C-o>b
noremap! <c-BS> <left><Del>
noremap! ;; <ESC>

noremap <leader>ln <ESC>:lne<CR>
noremap <leader>lp <ESC>:lp<CR>
noremap <leader>lw <ESC>:lw<CR>
noremap <leader>ln <ESC>:cn<CR>
noremap <leader>lp <ESC>:cp<CR>
noremap <leader>cw <ESC>:cw<CR>
noremap <leader>bn <ESC>:bn<CR>
noremap <leader>bp <ESC>:bp<CR>
noremap <leader>bd <ESC>:bd<CR>


inoremap <leader>d <ESC>d
inoremap <leader>v <ESC>v
inoremap <leader>u <ESC>u 
inoremap <leader>o <ESC>o
inoremap <leader>O <ESC>O


"spell check and fix
imap <c-f> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-f> [s1z=

cmap <c-p> <Up>
cmap <c-n> <Down>

"==============================================================================
"vundle setting"
"==============================================================================
set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'taglist.vim'
Plugin 'SuperTab'
"Plugin 'vimwiki'
Plugin 'winmanager'
Plugin 'bufexplorer.zip'
Plugin 'The-NERD-tree'
Plugin 'matrix.vim--Yang'
Plugin 'FencView.vim'
Plugin 'bufkill.vim'
"Plugin 'Conque-Shell'
"Plugin 'Vimpress'
"Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
"Plugin 'c.vim'
Plugin 'Grep.vim'
Plugin 'a.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'autoload_cscope.vim'

Plugin 'kien/ctrlp.vim'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'stephenmckinney/vim-solarized-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'javacomplete'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'vim-scripts/TagHighlight'
Plugin 'bling/vim-airline'
Plugin 'edkolev/promptline.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'paranoida/vim-airlineish'
"Plugin 'itchyny/lightline.vim'

Plugin 'FelikZ/ctrlp-py-matcher'

Plugin 'scrooloose/syntastic'
Plugin 'DoxygenToolkit.vim'
"Plugin 'vim-scripts/YankRing.vim'
"Plugin 'vim-scripts/AutoComplPop'
"Plugin 'vim-scripts/SyntaxComplete'
Plugin 'Yggdroot/indentLine'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'airblade/vim-rooter'
Plugin 'terryma/vim-expand-region'

Plugin 'lervag/vim-latex'

Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'

Plugin 'craigemery/vim-autotag'

"Plugin 'Rip-Rip/clang_complete'
"Plugin 'Shougo/neocomplete.vim'

Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomasr/molokai'
Plugin 'zenorocha/dracula-theme'

Plugin 'rking/ag.vim'

Plugin 'christoomey/vim-tmux-navigator'


call vundle#end()
filetype plugin indent on


"==========================================================================
"taglist
"==========================================================================

" 不同时显示多个文件的 tag ，只显示当前文件的
let Tlist_Show_One_File=0

" 如果 taglist 窗口是最后一个窗口，则退出 vim
let Tlist_Exit_OnlyWindow=1

"让当前不被编辑的文件的方法列表自动折叠起来
let Tlist_File_Fold_Auto_Close=1

"把taglist窗口放在屏幕的右侧，缺省在左侧
let Tlist_Use_Right_Window=1

"显示taglist菜单
let Tlist_Show_Menu=1

" winmanager配置  
"let g:winManagerWindowLayout='TagList|FileExplorer'  
let g:winManagerWindowLayout='NERDTree|TagList'  
let g:winManagerWindowLayout='TagList'  
"nmap <silent> <F8> :WMTogge<cr>  
let g:winManagerWidth = 30  
let g:winManagerAutoOpen=0  
"autocmd VimEnter * WMToggle
nmap wm :WMToggle<cr>  

"NERDTree 配置  
let g:NERDTree_title="[NERDTree]"  
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
function! NERDTree_IsValid()  
    return 1  
endfunction   


" go to defn of tag under the cursor
fun! MatchCaseTag()
    let ic = &ic
    set noic
    try
        exe 'tjump ' . expand('<cword>')
    finally
        let &ic = ic
    endtry
endfun
nnoremap <silent> <c-]> :call MatchCaseTag()<CR>


if has('cscope')
    set cscopetag cscopeverbose

    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif

    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help

    nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR> <c-o> :cw<CR>
    nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    nmap <C-_>l :!cscope -Rbq<CR> :cs reset<CR>

    "nmap <C-_>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    "nmap <C-_>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    "nmap <C-_>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    "nmap <C-_>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    "nmap <C-_>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    "nmap <C-_>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    "nmap <C-_>i :vert scs find i ^<C-R>=expand("<cfile>")<CR><CR>
    "nmap <C-_>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
    "command -nargs=0 Cscope cs add ./cscope.out .
    au BufEnter /* call LoadCscope()
    set tags=tags;
endif

if has('ctags')
    set autochdir
endif

function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
    endif
endfunction


" configuration for YCM

"设置error和warning的提示符，如果没有设置，ycm会以syntastic的
" g:syntastic_warning_symbol 和 g:syntastic_error_symbol 这两个为准
let g:ycm_error_symbol = "✗"
let g:ycm_warning_symbol = '⚠'

"设置跳转的快捷键，可以跳转到definition和declaration
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nmap <F4> :YcmDiags<CR>

"设置全局配置文件的路径
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
"开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
"在接受补全后不分裂出一个窗口显示接受的项
"set completeopt-=preview
set completeopt=menu,longest
"set complete=.,b,u,]
"set complete+=k
"不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0
"每次重新生成匹配项，禁止缓存匹配项
let g:ycm_cache_omnifunc=1
"在注释中也可以补全
let g:ycm_complete_in_comments=1
"输入第一个字符就开始补全
let g:ycm_min_num_of_chars_for_completion=1
"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
let g:ycm_use_ultisnips_completer=1

"let g:ycm_filetype_whitelist = { '*': 1 }
"let g:ycm_auto_trigger = 0
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'unite' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

"let g:ycm_global_ycm_extra_conf='~/.ycm/c.ycm_extra_conf.py'
autocmd FileType c let g:ycm_global_ycm_extra_conf='/home/caiqc/.ycm/c.ycm_extra_conf.py'
autocmd FileType cpp let g:ycm_global_ycm_extra_conf='/home/caiqc/.ycm/cpp.ycm_extra_conf.py'

let g:ycm_register_as_syntastic_checker=0
let g:ycm_show_diagnostics_ui=0

let g:ycm_echo_current_diagnostic = 1
let g:ycm_enable_diagnostic_highlighting = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:ycm_always_populate_loc_list = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<c-n>'
"let g:SuperTabDefaultCompletionType = '<C-X><C-N>'
let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabContextDefaultCompletionType = "<C-X><C-N>"
"let g:SuperTabDefaultCompletionType = "<c-x><c-n>"
"let g:SuperTabDefaultCompletionType = '<c-x> <c-o>'

""""""""""syntastic""""""""""""
let g:syntastic_debug = 0
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_c_include_dirs = ['/usr/include/']
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_c_check_header = 1
let g:syntastic_c_compiler = 'gcc'
let g:syntastic_c_compiler_options = '-std=c99'

let g:syntastic_c_checkers = ['gcc']
"let g:syntastic_c_checker_args = ['-I~/research/redis/deps/hiredis']

let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_include_dirs = ['/usr/include/', '/home/caiqc/research/memepiC/include', '/home/caiqc/research/GlobalMemory/code/include']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++11'
"set error or warning signs
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = '⚠'
"whether to show balloons
let g:syntastic_enable_balloons = 1

let g:syntastic_mode_map = { 'passive_filetypes':['tex', 'java'] }

" jump to next error
"map <F3> :lnext<CR>

"""""""""""""""solarized powerline and colorscheme """""""""""""""""""""
"let g:Powerline_theme='short'
syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
"colorscheme dracula
"colorscheme molokai
"let g:molokai_original = 0
"let g:rehash256 = 0
set laststatus=2

"set t_Co=256
"let g:solarized_termcolors=256
"let g:Powerline_colorscheme='solarized256_dark'
"set background=dark
"colorscheme solarized

"let g:airline_theme             = 'base16'
"let g:airline_theme             = 'airlineish'
"let g:airline_theme             = 'powerlineish'
let g:airline_theme             = 'bubblegum'
let g:airline_theme             = 'kalisi'
"let g:airline_enable_syntastic  = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_powerline_fonts=1

" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
" let g:airline#extensions#tabline#left_sep = ''

" set left separator which are not editting
" let g:airline#extensions#tabline#left_alt_sep = ''
" show buffer number
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"let g:airline#extensions#hunks#enabled =0

let g:Powerline_symbols = 'fancy'

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#eclim#enabled = 1


nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" enable/disable showing a summary of changed hunks under source control. >
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
" enable/disable showing only non-zero hunks. >
let g:airline#extensions#hunks#non_zero_only = 0
" set hunk count symbols. >
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
" set filename
let g:airline_section_c = '%t'
let g:airline_section_c = airline#section#create(['%t', ' ', 'readonly'])

" set default layout
let g:airline#extensions#default#layout = [
            \ [ 'a', 'b', 'c', ],
            \ [ 'x', 'y', 'z', ]
            \ ]

" control the auto-truncation of airline
let g:airline#extensions#default#section_truncate_width = {
            \ 'b': 79,
            \ 'x': 60,
            \ 'y': 88,
            \ 'z': 45,
            \ }
let g:airline#extensions#default#section_truncate_width = {}

""""""""""tmuxline""""""""""""""""""""""
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_theme = 'airline_virtual'
"let g:tmuxline_theme = 'vim_statusline_3'
"let g:tmuxline_preset = {
"      \'a'    : '#S',
"      \'b'    : '#W',
"      \'c'    : '#H',
"      \'win'  : '#I #W',
"      \'cwin' : '#I #W',
"      \'x'    : '#(date)',
"      \'y'    : '#W %R',
"      \'z'    : '#H'}

"let g:tmuxline_preset = {
"      \'a'    : '#(whoami)',
"      \'b'    : '#H',
"      \'c'    : '#(date)',
"      \'win'  : ['#I', '#W'],
"      \'cwin' : ['#I', '#W', '#F'],
"      \'y'    : ['#(uptime | cut -d " " -f 3,4,5,6,7,8,9,10,11,12,13,14)'],
"      \'z'    : '#H'}


let g:tmuxline_preset = {
            \'a'    : '#(whoami)',
            \'b'    : '#H',
            \'win'  : ['#I', '#W'],
            \'cwin' : ['#I', '#W', '#F'],
            \'z'    : '#(date)'}

"\'y'    : ['%R', '%a', '%Y'],
"
""""""""""promptline""""""""""""""""""""""
"let g:promptline_powerline_symbols = 0
"let g:promptline_symbols = {
"    \ 'left'       : '>',
"    \ 'left_alt'   : '>',
"    \ 'dir_sep'    : ' / ',
"    \ 'truncation' : '...',
"    \ 'vcs_branch' : '',
"    \ 'space'      : ' '}

let g:promptline_preset = {
            \'a'    : [ '\u' ],
            \'b'    : [ '\h' ],
            \'c'    : [ '\W' ],
            \'z'    : [ promptline#slices#vcs_branch() ]}

"""""""""""""c.vim"""""""""""""""""""
let g:C_UseTool_Cmake = 'yes'
let g:C_Root='&C\/C\+\+.'

""""""""""""""ctrlP""""""""""""""""""
let g:ctrlp_extensions=['smarttabs']
let g:ctrlp_user_command = 'ag %s -i --nogroup --hidden
            \ --ignore .git
            \ --ignore .svn
            \ --ignore .hg
            \ --ignore .DS_Store
            \ --ignore "aeolus-doc/**"
            \ --ignore "**/*.pyc"
            \ --ignore "**/*.so"
            \ --ignore "**/*.swp"
            \ --ignore "**/*.gz"
            \ --ignore "**/*.tar"
            \ --ignore "**/*.a"
            \ --ignore "**/*.o"
            \ --ignore "**/*.so"
            \ --ignore "**/*.zip"
            \ --ignore "**/*.class"
            \ --ignore "**/*.html"
            \ --ignore "**/*.png"
            \ --ignore "**/*.jpg"
            \ --ignore "**/.*/**"
            \ --ignore "**/.*"
            \ -g ""'

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' } 
let g:ctrlp_max_height = 20
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.tar,*.gz

"map <leader>p :CtrlP<CR>
"map <leader>b :CtrlPBuffer<CR>
map <leader>m :CtrlPMRUFiles<CR>
map <leader>t :CtrlPTag<CR>

"set viewoptions=folds
"set foldmethod=syntax
"set cursorcolumn

"autocmd BufNewFile,BufRead *.c set formatprg=astyle\ -b

"autocmd Filetype * runtime! autoload/eclim/<amatch>/complete.vim
"    \ | let s:cfunc = 'eclim#'.expand('<amatch>').'#complete#CodeComplete'
"    \ | if exists('*'.s:cfunc) | let &l:omnifunc=s:cfunc | endif

"autocmd Filetype php setlocal omnifunc=eclim#php#complete#CodeComplete
autocmd Filetype java setlocal omnifunc=eclim#java#complete#CodeComplete
"let g:EclimFileTypeValidate = 0
"let g:EclimJavaValidate = 1
autocmd FileType c let g:EclimFileTypeValidate = 0
autocmd FileType cpp let g:EclimFileTypeValidate = 0

filetype detect
if &ft=="java"
    "nnoremap <F5> :exec("SyntasticCheck") <bar> exec("Errors")<CR> <C-W>j <CR>
    "nnoremap <F5> :JavaDocPreview<CR>

    "eclimd settings
    " search the implementaion of the method under cursor
    noremap <F7> :JavaSearch -t all -x implementors -s project -a edit <cr>
    noremap <leader>jsi :JavaSearch -t all -x implementors -s project -a edit <cr>
    noremap <leader>jsiv :JavaSearch -t all -x implementors -s project -a vsplit <cr>
    noremap <leader>jsis :JavaSearch -t all -x implementors -s project -a split <cr>
    noremap <F6> :JavaSearch -t all -x declarations -s project -a edit <cr>
    noremap <leader>jsd :JavaSearch -t all -x declarations -s project -a edit <cr>
    noremap <leader>jsdv :JavaSearch -t all -x declarations -s project -a vsplit <cr>
    noremap <leader>jsds :JavaSearch -t all -x declarations -s project -a split <cr>
    " search the references of the method under cursor
    noremap <F5> :JavaSearch -t all -x references -s project -a edit <cr>
    noremap <leader>jsr :JavaSearch -t all -x references -s project -a edit <cr>
    noremap <leader>jsrv :JavaSearch -t all -x references -s project -a vsplit <cr>
    noremap <leader>jsrs :JavaSearch -t all -x references -s project -a split <cr>
    " serach the implementation for a given pattern
    noremap <F4> :JavaSearch -s workspace -t method -x implementors -i -a edit -p 
    noremap <C-]> :JavaSearchContext -a edit <cr>
    noremap <leader>jsc  :JavaSearchContext -a edit <cr>
    noremap <leader>jscv :JavaSearchContext -a vsplit <cr>
    noremap <leader>jscs :JavaSearchContext -a split <cr>
    "noremap <C-]> :JavaSearch -t all -x declarations -s project -a edit <C-R><C-W> <cr>
    let g:EclimJavaSearchSingleResult = "edit"
else
    nnoremap <F5> :YcmDiags<CR>
endif

let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1
let g:indentLine_color_term=239

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips","UltiSnips"]


"let g:EclimCompletionMethod = 'omnifunc'

"========================easy motion=======================
nmap f <Plug>(easymotion-sl)
map s <Plug>(easymotion-s2)
"nmap t <Plug>(easymotion-s2)
imap <leader>f <ESC><Plug>(easymotion-sl)
nmap <leader>f <Plug>(easymotion-sl)
imap <leader>s <ESC><Plug>(easymotion-s2)
nmap <leader>s <Plug>(easymotion-s2)
"imap <leader>t <ESC><leader>t

"nmap <leader>w <Plug>(easymotion-bd-wl)
"nmap <Leader>l <Plug>(easymotion-lineforward)
"nmap <Leader>j <Plug>(easymotion-j)
"nmap <Leader>k <Plug>(easymotion-k)
"nmap <Leader>h <Plug>(easymotion-linebackward)

map <leader>w <ESC><Plug>(easymotion-bd-wl)
map <Leader>l <ESC><Plug>(easymotion-lineforward)
map <Leader>j <ESC><Plug>(easymotion-j)
map <Leader>k <ESC><Plug>(easymotion-k)
map <Leader>h <ESC><Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion"
let g:EasyMotion_smartcase = 1 "case insensitive"

autocmd Filetype tex set textwidth=80
autocmd Filetype tex set spell
autocmd Filetype tex highlight Normal ctermfg=6

let g:tex_conceal = ""

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
    "let g:ycm_semantic_triggers = {'text': ["."]}
endif
let g:ycm_semantic_triggers.tex = [
            \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*, ?)*'
            \ ]

let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
"let tlist_make_settings  = 'make;m:makros;t:targets'

"if exists('+omnifunc')
"    " Do not set the option if already set since this
"    " results in an E117 warning.
"    if &omnifunc == ""
"        setlocal omnifunc=syntaxcomplete#Complete
"    endif
"endif
"
"let g:ycm_semantic_triggers.text = [
"            \ 're!.'
"            \ ]

"augroup CursorLine
"    au!
"    au VimEnter * setlocal cursorline
"    au WinEnter * setlocal cursorline
"    au BufWinEnter * setlocal cursorline
"    au WinLeave * setlocal nocursorline
"augroup END
highlight CursorLine ctermbg=0


"==========multicursor settings==============
nnoremap <C-c> :call multiple_cursors#quit()<CR>
let g:multi_cursor_use_default_mapping=0
"let g:multi_cursor_quit_key='<Esc>'
"let g:multi_cursor_start_word_key='g<C-n>'
"let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-c>'

let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0

" Default highlighting (see help :highlight and help :highlight-link)
"highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
"highlight link multiple_cursors_visual Visual

" Disable YouCompleteMe when using vim-multiple-cursors
function! Multiple_cursors_before()
    if exists('*youcompleteme#EnableCursorMovedAutocommands')
        call youcompleteme#DisableCursorMovedAutocommands()
    endif
endfunction

function! Multiple_cursors_after()
    if exists('*youcompleteme#EnableCursorMovedAutocommands')
        call youcompleteme#EnableCursorMovedAutocommands()
    endif
endfunction

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

"=====================Ag configuration==============
let g:ag_working_path_mode="r"

"======================make tmux work with vim===========
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>
let g:tmux_navigator_save_on_switch = 1
