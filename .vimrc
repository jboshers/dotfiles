set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'christoomey/vim-run-interactive'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'
Plugin 'rking/ag.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'wavded/vim-stylus'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'juvenn/mustache.vim'
Plugin 'moll/vim-node'
Plugin 'elzr/vim-json'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'edkolev/tmuxline.vim'
call vundle#end()

syntax on
filetype plugin indent on

set visualbell
set wildmenu
set wildmode=list:longest,full
set title " set terminal title

set splitright
set splitbelow

set hidden

set antialias
set encoding=utf-8
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
" set shell=zsh

set relativenumber 
set number

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
  let g:indent_guides_auto_colors = 0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235 
augroup END

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.js.map$', '.DS_Store', '.git']

" Syntastic Stuffs
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_haml_checkers=['haml']
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_coffeescript_checkers=['coffeelint']
let g:syntastic_error_symbol="☠"
let g:syntastic_warning_symbol="☹"
let g:tmuxline_preset={
      \'a'    : '⚛ #S',
      \'b'    : '#W',
      \'win'  : '#I:#W',
      \'cwin' : '★ #W',
      \'x'    : '#(osascript ~/dotfiles/applescripts/spotify.scpt)',
      \'y'    : '%a %R',
      \'z'    : '#h'}
set tabstop=2 shiftwidth=2 expandtab
set backspace=2
set number numberwidth=4 
set cursorline
set scrolloff=8
set hlsearch
set clipboard+=unnamed

syntax on

" ctrlP Settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.DS_Store
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" NerdTree Stuff
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set background=dark
colorscheme base16-railscasts

highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1 

" Keybindings
map <C-n> :NERDTreeToggle<CR>

"Fast quit and save from normal and insert mode
" :map <C-X> <ESC>:x<CR>
" :imap <C-X> <ESC>:x<CR>

" Window movements
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Tabs
nnoremap <F1>  :tabnext<CR>
" Fuck swap files
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//
