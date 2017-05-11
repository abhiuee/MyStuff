set nocompatible              	" be iMproved, required
filetype off                  	" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'mileszs/ack.vim'
" All of your Plugins must be added before the following line
call vundle#end()            	" required
filetype plugin indent on    	" required

set history=256  		" Number of things to remember in history.
set autowrite  			" Writes on make/shell commands
set autoread  
set timeoutlen=250  		" Time to wait after ESC (default causes an annoying delay)
set tags=./tags;$HOME 		" walk directory tree upto $HOME looking for tags

" Backup
set nowritebackup
set nobackup
set directory=/tmp// 		" prepend(^=) $HOME/.tmp/ to default path; use full
				" path as backup filename(//)
" Buffers
set hidden 			" The current buffer can be put to the background without writing
				" to disk
" Match and search
set hlsearch    		" highlight search
set ignorecase  		" Do case in sensitive matching with
set smartcase			" be sensitive when there's a capital letter
set incsearch   		"


" Formatting
set fo+=o 			" Automatically insert the current comment leader after hitting
				" 'o' or 'O' in Normal mode.
set fo-=r 			" Do not automatically insert a comment leader after an enter
set fo-=t 			" Do no auto-wrap text using textwidth (does not apply to
				" comments)
set textwidth=0			" Don't wrap lines by default
set wildmode=longest,list 	" At command line, complete longest common string,
				" then list alternatives.
set backspace=indent,eol,start	" more powerful backspacing

set tabstop=2   	 	" Set the default tabstop
set softtabstop=2
set shiftwidth=2 		" Set the default shift width for indents
set expandtab   		" Make tabs into spaces (set by tabstop)
set smarttab 			" Smarter tab levels
set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case
syntax on

set showmatch  			" Show matching brackets.
set matchtime=5  		" Bracket blinking.
set novisualbell  		" No blinking
set noerrorbells  		" No noise.
set laststatus=2  		" Always show status line.
set vb t_vb= 			" disable any beeps or flashes on error
set ruler  			" Show ruler
set showcmd 			" Display an incomplete command in the lower right corner of the Vim window
set shortmess=atI 		" Shortens messages

set nolist 			" Display unprintable characters f12 - switches
set listchars=tab:·\ ,eol:¶,trail:·,extends:»,precedes:« " Unprintable chars mapping

set foldenable 			" Turn on folding
set foldmethod=marker 		" Fold on the marker
set foldlevel=100 		" Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds 

let mapleader = " "
set gdefault

set list listchars=tab:»·,trail:·,nbsp:·
set splitright

set winwidth=104
set winheight=5
set winminheight=5
set winheight=999

set matchpairs+=<:>

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F2 before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"
