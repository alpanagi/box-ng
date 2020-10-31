if !exists('g:vscode')
  call plug#begin('~/.local/share/nvim/plugged')
  
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'dracula/vim', {'as': 'dracula'}
  " Plug 'w0rp/ale'
  Plug 'scrooloose/nerdtree'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-commentary'
  Plug 'kassio/neoterm'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdcommenter'
  Plug 'psliwka/vim-smoothie'
  Plug 'arcticicestudio/nord-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
  
  call plug#end()
  
  " global
  set autoread
  set cmdheight=2
  set number
  let mapleader=';'
  set updatetime=500
  set colorcolumn=81
  set ignorecase
  set smartcase
  set list
  set noerrorbells
  
  " indentation
  " filetype plugin indent off
  " autocmd BufEnter *.tsx :setlocal filetype=typescript.tsx
  
  " comments
  let g:NERDSpaceDelims = 1
  
  " ale
  " let g:ale_fixers = {
  " \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  " \   'javascript': ['prettier', 'eslint'],
  " \   'typescript': ['prettier', 'eslint'],
  " \   'typescript.tsx': ['prettier', 'eslint'],
  " \}
  " let g:ale_fix_on_save=1
  
  " colors
  " set termguicolors
  " set background=dark
  " set guifont=DroidSansMono_Nerd_Font:h11
  colorscheme dracula
  " colorscheme nord
  
  " tabs
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  
  " security
  let g:netrw_dirhistmax=0
  set viminfo=""
  set noundofile
  set nobackup
  set nowritebackup
  set noswapfile
  
  " airline
  let g:airline_powerline_fonts=2
  let g:airline#extensions#tabline#enabled=1
  let g:airline#extensions#tabline#formatter='unique_tail'
  
  " NERDTree
  let g:NERDTreeWinSize=40
  
  " keymaps
  :nnoremap <F1> :NERDTreeToggle<CR>
  :nnoremap <F2> :NERDTreeFind<CR>
  :nnoremap <F3> :terminal<CR>
  :nnoremap <F4> :noh<CR>
  
  :nnoremap <leader>e :Files<CR>
  :nnoremap <leader>ge :GFiles<CR>
  :nnoremap <leader>b :Buffers<CR>
  :nnoremap <leader>t :Tags<CR>
  :nnoremap <Leader>/ :Rg<CR>
  
  :nnoremap <F5> :Gstatus<CR>
  :nnoremap <F6> :Gdiff<CR>
  :nnoremap <F7> :Gblame<CR>
  :nnoremap <F8> :GitGutterLineHighlightsToggle<CR>
  
  :tnoremap <F9> <C-\><C-n>
  
  :nnoremap <F10> :! prettier --check %<CR>
  
  :nnoremap <Tab> :bnext<CR>
  :nnoremap <S-Tab> :bprevious<CR>
  
  :nnoremap <leader>h <C-w>h
  :nnoremap <leader>j <C-w>j
  :nnoremap <leader>k <C-w>k
  :nnoremap <leader>l <C-w>l
  
  :nnoremap <leader>v :vsplit<CR>
  
  :nnoremap <leader>bdd :bufdo bwipeout<CR>
  
  " nmap <silent> <leader>] :ALENext<cr>
  " nmap <silent> <leader>[ :ALEPrevious<cr>
  
  " coc
  let g:coc_global_extensions = ['coc-tsserver']
  if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
    let g:coc_global_extensions += ['coc-prettier']
  endif
  if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
    let g:coc_global_extensions += ['coc-eslint']
  endif
  
  inoremap <silent><expr> <c-space> coc#refresh()
  nmap <leader>rn <Plug>(coc-rename)
  
  " Use `[g` and `]g` to navigate diagnostics
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)
  
  " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)
  
  " Use K to show documentation in preview window
  nnoremap <silent> K :call <SID>show_documentation()<CR>
  command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')
  
  " Using CocList
  " Show all diagnostics
  nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
  
  nmap <leader>ac  <Plug>(coc-codeaction)
  " Fix autofix problem of current line
  nmap <leader>qf  <Plug>(coc-fix-current)
endif
