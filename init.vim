" Muha's init.vim config for NeoVim
" The environment is used for javascript  , angular , python , markdown ,
" and vim language .
" I'm using Windows and Linux, comment out the link for ruby and python if you
" are !win, only
" windows is difficult in these kind of things.

" --- python and ruby link ---
let g:python3_host_prog='C:/Tools/Python3/python.exe'
let g:python_host_prog='C:/Tools/Python2/python.exe'
let g:loaded_ruby_provider = 1

" =============================
"         VimPlug-Bundles
" =============================
call plug#begin('~/AppData/Local/nvim/plugged/')

" --- Core ---
Plug 'tpope/vim-dispatch'

" --- IDE Like ---
Plug 'majutsushi/tagbar'
Plug 'sjl/Gundo.vim'
Plug 'reedes/vim-wheel'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" --- Formatting ---
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'lilydjwg/colorizer'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'yuttie/comfortable-motion.vim'
Plug 'Chiel92/vim-autoformat'

" --- Completion ---
Plug 'autozimu/LanguageClient-neovim', { 'do': 'UpdateRemotePlugins' }
Plug 'shougo/denite.nvim'
Plug 'shougo/deoplete.nvim',{ 'do': 'UpdateRemotePlugins' }
Plug 'shougo/echodoc.vim'
Plug 'ervandew/supertab'
Plug 'shougo/neco-syntax'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'poppyschmo/deoplete-latex'
Plug 'mhartington/nvim-typescript'
Plug 'shougo/neco-vim'
Plug 'zchee/deoplete-jedi'
Plug 'pkosel/deoplete-omnisharp'
Plug 'zchee/deoplete-clang'
Plug 'shougo/neosnippet.vim'
Plug 'honza/vim-snippets'
Plug 'shougo/deoplete-rct'
Plug 'shougo/neosnippet-snippets'

" --- Denite ---
Plug 'shougo/defx.nvim'
Plug 'shougo/neomru.vim'

" --- UI ---
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'myusuf3/numbers.vim'

" --- Writers tools ---
Plug 'reedes/vim-wordy'
Plug 'reedes/vim-wheel'
Plug 'reedes/vim-pencil'

" --- Language ---
Plug 'Omnisharp/omnisharp-vim'
Plug 'pangloss/vim-javascript'
Plug 'gabrielelana/vim-markdown'
Plug 'othree/html5.vim'
Plug 'nvie/vim-flake8'
Plug 'elzr/vim-json'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/ng-tsserver'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'lervag/vimtex'

" --- Misc ---
Plug 'wakatime/vim-wakatime'

" --- DEVICONS ---
Plug 'ryanoasis/vim-devicons'

call plug#end()

" =============================
"        Vim Configuration
" =============================

" --- make plugin works ---
set laststatus=2
set number

" --- Formatting ---
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set cursorline
set showmatch

" --- splitting ---
set splitbelow
set splitright

" --- performance ---
set hidden
set lazyredraw

" --- history ---
set undolevels=999

" --- backup and swap ---
set nobackup
set nowritebackup
set noswapfile

" --- search ---
set hlsearch
set incsearch

" --- Styling ---
set t_Co=256
set background=dark
colorscheme gruvbox
set encoding=utf-8 nobomb

" ============================
"       Plugin Settings
" ============================

" --- Airline ---
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''

" --- Numbers ---
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']

" --- Nerd-Commenter ---
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" --- indent guides ---
let g:indentLine_char = '┆'
let g:indentLine_enabled = 1

" --- Calendar ---
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" --- CtrlP ---
let g:ctrlp_working_path_mode = 'ra'

" --- Syntastic ---
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_html_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']

" --- vim markdown ---
let g:markdown_enable_folding = 1
let g:markdown_enable_spell_checking = 0
let g:markdown_enable_conceal = 1

" --- Tsuquyomi ---
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_completion_preview = 1

" --- Deoplete ---
let g:deoplete#auto_complete_start_length = 2
let g:deoplete#enable_at_startup = 1
let g:deoplete#tag#cache_limit_size = 10000000
let g:deoplete#max_list = 70
let g:deoplete#file#enable_buffer_path = 1
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
let g:deoplete#sources#latex#include_web_math = 1
let g:deoplete#sources#latex#include_misc = 1

set completeopt-=preview
set completeopt+=noinsert
set completeopt+=noselect

" --- Supertab ---
let g:SuperTabDefaultCompletionType = '<C-n>'

" --- Omnisharp ---
let g:Omnisharp_selector_ui = 'ctrlp'
let g:Omnisharp_server_type = 'roslyn'
let g:Omnisharp_timeout = 1
let g:Omnisharp_host = 'http://localhost:2000'

" --- Vim Wheel ---
let g:wheel#map#up = '<M-k>'
let g:wheel#map#down = '<M-j>'

" --- Vim Pencil ---
augroup pencil
  autocmd!
  autocmd FileType markdown,md call pencil#init()
augroup end
let g:pencil#WrapModeDefault = 'soft'

" --- Neosnippet ---
imap <C-CR> <Plug>(neosnippet_expand_or_jump)
let g:neosnippet#snippets_directory = '~/AppData/Local/nvim/plugged/'

" ===========================
"         KEYMAPS
" ===========================

" --- LEADER ---
let mapleader = ','

" --- Completion ---
inoremap <C-Space> <C-n>

" --- VBLX problem ---
nnoremap q $
nnoremap $ q
nnoremap dq d$
nnoremap cq c$
nnoremap yq y$
vnoremap q $
vnoremap $ q

" --- Softwrap movement ---
nnoremap k gk
nnoremap j gj

" --- TimeStamp ---
inoremap <F3> <C-R>=strftime('%c')<CR>
nnoremap <F3> :pu=strftime('%c')<CR>

" --- switch background color ---
map <leader>bg :let &background = (&background == 'dark' ? 'light':'dark')<CR>

" --- Buffer ---
nmap <leader>nf :bn<CR>
nmap <leader>bf :bp<CR>
nmap <leader>bd :bd<CR>

" --- nospell nowrap ---
nmap <leader>nw :set nowrap<CR>
nmap <leader>wn :set wrap<CR>

" --- Translation --- 
xmap <C-t><C-r> :!trans -t id 

" --- Dictionary ---
xmap <C-d><C-c> :Dict

" --- Airline ---
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" --- Splitting ---
nmap <leader>ns :sp<CR>
nmap <leader>vs :vne<CR>

" --- denite ---
map <C-.> :Denite file_rec<CR>
map <C-.> :Denite file_rec<CR>
map <C-M><C-R> :Denite file_mru<CR>
map <F6> :Denite change<CR>
nmap <leader>. :Denite register<CR>
nmap <leader>bl :Denite buffer<CR>

" --- Calendar.vim ---
map <leader>cal :Calendar<CR>
