" **********  general stuff *******
" vim not vi... always
set nocompatible
" leave me a statusline
set laststatus=0
" don't display macro steps
set lazyredraw
" print line and charactor numbers
set ruler

" *************** auto tabing ***************
" next 3 options: don't do auto indenting shit
" don't do autoindenting for C
set nocindent
" don't do autoindenting for any language
set nosmartindent
" do try maintain the current tabstop when I start a new line
set autoindent

" *************** tabing ***************
" manual tabbing = 2
set tabstop=2
" number of spaces to use for autoindenting
set shiftwidth=2
" round any autotabbing to shiftwidth
set shiftround
" turn tabs into spaces
set expandtab
" for non-display, only editing purposes, treat tabs as this many spaces
" 0 is get what I see
set softtabstop=0
" make spaces act properly like tabs with backspace and stuff
set smarttab

" **************** movement **************
" allow backspace over everything
"set backspace=2
set backspace=1
" scroll when less then n lines from bottom
set scrolloff=5
" no cursor keys... makes escape faster
set noesckeys
" allow these keys to switch lines (] is next paragraph)
"set whichwrap=h,l,<,>,[,]
set whichwrap=<,>,[,]
" fix wrap to 80
set textwidth=80
" don't wrap, add an endline instead
"set nowrap


" ************** some display parameters ************
" be slower, we're probably running on the same machine 
" makes updates smoother
set ttyfast
" show the command as I type it
set showcmd
" don't highlight every instance of search string
set nohlsearch
" The following three lines are for unselecting searched text
imap <C-C> <C-0>:nohlsearch
nmap <C-C>      :nohlsearch
vmap <C-C>      :nohlsearch

" ******************** tmp files and syncing *************************
" basically... the next 4 options are please don't write shit to disk...
" I mean ANYTHING, note this means no lock files
" no backup files
set nobackup
" don't write to backup files
set nowritebackup
" no swap files
set noswapfile
" don't sync when I save
set swapsync=""
" don't sync damnit
"set nofsync
" put swap files in dir
set dir=~/tmp
set updatecount=0
set updatetime=0

" *********************** syntax stuff **********************
" howto autoformat text
" t - uses autowrap at textwidth, q enables gq text reflow
" 2 - tells autoident to use the second line of a paragraph for indentation
" B - don't break multibyte charactors
" TURN off autoformat
set formatoptions="tqB"
" show matching brackets
set showmatch
" syntax highlighting
syntax on
colorscheme koehler
"colorscheme elflord

"Show spaces at ends of lines
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
highlight LineTooLong ctermbg=blue guibg=blue
match LineTooLong /\%81v.*/

nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>
set showmode

