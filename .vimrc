set nocompatible    "required
filetype off        "required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mbbill/desertEx'
Plugin 'brandonbloom/csearch.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'
Plugin 'Shougo/unite.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Chiel92/vim-autoformat'
Plugin 'rdnetto/YCM-Generator'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()           "required
filetype plugin indent on   "required

"NerdTree
:map <F6> :NERDTreeToggle<CR> 
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"CtrlP
let g:ctlp_max_files = 0 
let g:ctrlp_user_command = 'mdfind -onlyin %s file'
set wildignore+=*/tmp/*,**/build/**,.o,*.so,*.swp,*.zip,*.dll,*.png,*.jpg,*.ico,*.bmp     " Linux/MacOSX
let g:ctrlp_user_command = "find %s -type f | egrep -v 'build' | egrep -v '/\.(git|hg|svn)|solr|tmp/' | egrep -v '\.(png|exe|jpg|gif|jar|class|swp|swo|log|gitkep|keepme|so|o)$'"
let g:ctrlp_working_path_mode = 'ra'

"YCM
let g:ycm_server_python_interpreter = '/usr/bin/python'

"EasyMotion
let g:EasyMotion_leader_key = '<Leader>'

set cursorline
set foldmethod=syntax
"airline plugin
:let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

" auto-format
let g:formatterpath = ['~/Homebrew/bin/js-beautify']

"Unite
" ==== Unite ======================= {{{
" ==================================
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
let g:unite_source_history_yank_enable = 1
let g:unite_force_overwrite_statusline = 0
let g:unite_enable_ignore_case = 1
" The prefix key
nnoremap [unite] <Nop>
nmap <space> [unite]
" General purpose
nnoremap [unite]<space> :Unite -no-split -start-insert source<cr>

" Files
nnoremap [unite]f :Unite -no-split -start-insert file_rec<cr>
"nnoremap [unite]f :Unite -no-split -start-insert file_rec/async<cr>

" Content
nnoremap [unite]o :Unite -no-split -start-insert -auto-preview outline<cr>
nnoremap [unite]l :Unite -no-split -start-insert line<cr>
nnoremap [unite]t :!retag<cr>:Unite -no-split -auto-preview -start-insert tag<cr>

" Quickly switch between recent things
nnoremap [unite]F :Unite -no-split buffer tab file_mru directory_mru<cr>
nnoremap [unite]b :Unite -no-split buffer<cr>
nnoremap [unite]m :Unite -no-split file_mru<cr>

" Yank history
nnoremap [unite]y :Unite -no-split history/yank<cr>
" }}}

"Autocomplete
let g:formatdef_clangformat_ojbc = '"clang-format -style=~/.vim/bundle/vim-autoformat/.google-clang-format"'
" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set nospell

"Do not swap file
set swapfile
set directory=/tmp

set wildmenu
set path+=**
 """"""""""""""""""""""""""""""
 " => Indent               
 """"""""""""""""""""""""""""""
 "Auto indent              
 set ai
    
 "Smart indet
 set si
    
 "C-style indenting        
 set cindent
 
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Text option
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 set ruler
 set nu
 set shiftwidth=4
 set softtabstop=4
 set tabstop=4
 set backspace=2
 set expandtab
 set smarttab
 set lbr
 set magic
 set hlsearch
 set is
 set nocompatible
 "set guioptions-=T
 set nowrap
 
 " Informative status line
 set laststatus=2 " alway show status line
 "set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
"" set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']['.&ft.']'}%=%l,%c\ %v%8p%%
 
 
 " windows cursor movement
 "map <C-TAB> <C-W>w
 set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 14
 "set guifont=Roboto\ Mono\ for\ Powerline:h16
 "set guifont=Monaco:h16
 " color schema
 colors desertEx
 syntax on
 syntax enable
 au BufNewFile,BufRead *.m,*.mm set ft=objc
 
 " mouse
 " Enable mouse use in all modes
  set mouse=a
 
 " Enable filetype plugin
 filetype plugin on
 filetype indent on
 
 " No sound on errors
 set noerrorbells
 set novisualbell
 set vb t_vb=
 
 " plugin
 let MRU_Max_Entries = 20
 let Tlist_Ctags_Cmd = '/opt/local/bin/ctags'
 let Tlist_Exit_OnlyWindow = 1
 let Tlist_Auto_Open = 1
 let Tlist_Actionscript_Settings = 'actionscript;c:class;f:method;p:property;v:variable'


 syn on
 if has('gui_running')
    set guioptions-=T "no toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar 
    " set window size
    "set lines=50
    "set columns=150
    autocmd GUIEnter * set vb t_vb=
    colors desertEx
else
    let g:solarized_termcolors=256
    set background=light
    colors solarized
 endif

 if has("cscope")
     set csprg=/opt/local/bin/cscope
     set csto=0
     set cst
     set nocsverb
     " add any database in current directory
     if filereadable("cscope.out")
         cs add cscope.out
     " else add database pointed to by environment
     elseif $CSCOPE_DB != ""
         cs add $CSCOPE_DB
     endif
     set csverb
 endif
 
 nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
 nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
 nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
 nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
 nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
 nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
 nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
 nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

