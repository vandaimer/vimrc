set shell=/bin/zsh "Sets the shell
set nocompatible "Use the vim settings, not vi
filetype plugin on "Enables the recognition files
filetype indent on
set magic "Enable regular expressions

" Indentation according to PEP8

au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set textwidth=139
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set autoindent
au         BufNewFile *.py,*.pyw set fileformat=unix


"Visual
set background=dark     " we're using a dark bg
colorscheme  gruvbox       " colorscheme from plugin
set laststatus=2        " always show statusline
set ruler   "Ruler breaks
set wrap    "It allows navigation within a long line with j and k
set showcmd " Show me what I'm typing
set hlsearch " Highlight found searches
set lazyredraw
set splitbelow " Split horizontal windows below to the current windows
set splitright " Split vertical windows right to the current windows
set t_Co=256 " Enable 256 colors
syntax on   "  Syntax highlighting
set nolinebreak
set number  "Show line numbers
"set relativenumber
set updatetime=250 
set cursorline
set showmode  " Show current mode.
set whichwrap=b,s,<,>,[,]
set title " Show title 
set showtabline=2
set fillchars+=stl:\ ,stlnc:\
set cmdheight=2 "Height command bar
hi TabLineFill ctermfg=White ctermbg=Yellow
hi TabLine ctermfg=Blue ctermbg=Yellow

"Visual Gui
set guifont=DroidSansMonoPLNerd:h12 
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

"Encoding
" Set default encoding to UTF-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast

"File handling
set autoread " Automatically reread changed files without asking me anything
set history=50 
set noswapfile " Don't use swapfile

" Use modeline overrides
set modeline
set modelines=10

"Handling
set backspace=indent,eol,start "Makes backspace key more powerful.
set clipboard=unnamedplus "Clipboard system
set foldlevel=99
set foldmethod=indent
set ignorecase " Search case insensitive...
set smartcase
set incsearch " Shows the match while typing
set nobackup " Don't create annoying backup files
set nowritebackup
set startofline "It allows you to change the column when moving through the line
set sm "Every time you close a parenthesis, bracket or brace, Vi shows where it was opened. If there is no  pair.

"Spell pt_BR 
"set spell spelllang=pt 

"hi SpellCap ctermfg=Gray ctermbg=Blue
"hi SpellBad ctermfg=Gray ctermbg=DarkRed 

let mapleader = ","  
let g:mapleader = "," 


"Shortcuts
nmap <C-t> :tabnew<CR> 
nmap <C-PageUp> :tabnext<CR>   
nmap <C-PageDown> :tabprevious<CR> 
nmap <C-x> :tabclose<CR> 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  
nmap <silent> <C-C> :silent noh<CR> 
inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>
nnoremap <Tab> gt
nnoremap <S-Tab> gT

"Completion
 set wildmode=list:longest
 set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
 set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
 set wildignore+=*vim/backups*
 set wildignore+=*sass-cache*
 set wildignore+=*DS_Store*
 set wildignore+=vendor/rails/**
 set wildignore+=vendor/cache/**
 set wildignore+=*.gem
 set wildignore+=log/**
 set wildignore+=tmp/**
 set wildignore+=*.png,*.jpg,*.gif
 
"Scrolling 
"Start scrolling when we're 8 lines away from  margins
 set scrolloff=8         
 set sidescrolloff=15
 set sidescroll=1

" Plugins

" " Settings for  Patogen
execute pathogen#infect()

" NerdTree {
          if isdirectory(expand("~/.vim/bundle/nerdtree"))
              map <C-e> :NERDTreeToggle<CR>
              map <leader>e :NERDTreeFind<CR>
              nmap <leader>nt :NERDTreeFind<CR>


              let NERDTreeShowBookmarks=1
              let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$','^\.svn$', '\.bzr$']
              let NERDTreeChDirMode=0
              let NERDTreeQuitOnOpen=1
              let NERDTreeMouseMode=2
              let NERDTreeShowHidden=1
              let NERDTreeKeepTreeInNewTab=1
              let g:nerdtree_tabs_open_on_gui_startup=0
          endif
      " }

                                    
" " Settings for Vim-airline
let g:airline_theme = 'wombat'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"Vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif


" Settings for YouCompleteMe

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Settings for python-mode

 map <Leader>g :call RopeGotoDefinition()<CR>
 let ropevim_enable_shortcuts = 1
 let g:pymode_rope_goto_def_newwin = "vnew"
 let g:pymode_rope_extended_complete = 1
 let g:pymode_breakpoint = 0
 let g:pymode_syntax = 1
 let g:pymode_syntax_builtin_objs = 0
 let g:pymode_syntax_builtin_funcs = 0
 map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for Minimap 

let g:minimap_highlight='Visual'
let g:minimap_show='<leader>ms'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>gc'
let g:minimap_toggle='<leader>gt'

" Settings for Vim-gitgutter

let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=237
let g:gitgutter_sign_column_always = 1
let g:gitgutter_sign_added = 'xx'
let g:gitgutter_sign_modified = 'yy'
let g:gitgutter_sign_removed = 'zz'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'ww'

" Settings for Syntastic 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" Minhas configurações
let g:session_autosave = 'no'
let g:session_autoload = 'no'
