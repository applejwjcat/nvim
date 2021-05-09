set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments

set nocompatible                        " 设置不兼容原始vi模式
set noeb                                " 关闭错误的提示
set showcmd
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set noruler              			    " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
" set conceallevel=1                      " So that I can't see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set relativenumber                      " Line relative numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=4                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set noswapfile                          " forbid creating the swap file
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=100                      " Faster completion
" set timeoutlen=200                      " By default timeoutlen is 1000 ms
set virtualedit=block,onemore           " 允许光标出现在最后一个字符的后面
set clipboard=unnamedplus               " Copy paste between vim and everything else
set scrolloff=4                         " always show the last 5 lines
set lazyredraw
set visualbell
set ignorecase
set smartcase
set list
set listchars=tab:\|\ ,trail:▫
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
exec "nohlsearch"

"set python host
" let g:python3_host_skip_check=1
let g:python3_host_prog = '/usr/local/anaconda3/bin/python'
let g:node_host_prog = '/usr/lib/node_modules/neovim/bin/cli.js'
" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

set guifont=Fira\ Code\ Nerd\ Font
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set mmp=1300
" set autochdir                           " Your working directory will always be the same as your working directory
" set foldcolumn=2                        " Folding abilities

" au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
" You can't stop me
cmap w!! w !sudo tee %
" set correct plugin file according to the plugin manager
if exists('g:loaded_plug')
    let g:plugin_manager_file = '$MYNVIM/vim-plug/plugins.vim'
    let g:plugin_core_file = '$MYNVIM/vim-plug/core.vim'
else
    let g:plugin_manager_file = '$MYNVIM/dein/plugin.vim'
    let g:plugin_core_file = '$MYNVIM/dein/core.vim'
endif
