" For vundle
set nocompatible
" 关闭文件类型检测功能
filetype off
" 允许vim加载文件类型插件
filetype plugin on 
" 允许vim为不同类型的文件定义不同的缩进格式
filetype indent on 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" vim-scripts repos
Bundle 'bash-support.vim'
Plugin 'lua-support'
" 插件:airline-state column
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" 插件:solarized配色
Plugin 'altercation/vim-colors-solarized'
" 插件:molokai配色
Plugin 'tomasr/molokai'
" 插件:字体
Plugin 'powerline/fonts'
" 插件:彩虹括号
Plugin 'luochen1990/rainbow'
" 插件:填充缩进
Plugin 'nathanaelkane/vim-indent-guides'
" 插件:虚线缩进
Bundle 'Yggdroot/indentLine'
" 插件:自动补全
"Bundle 'Valloric/YouCompleteMe'
" 插件:lua -- vim-misc
Plugin 'xolox/vim-misc'
" 插件:lua -- xolox/vim-lua-ftplugin
Plugin 'xolox/vim-lua-ftplugin'
" 插件:supertab
Plugin 'ervandew/supertab'
" 插件:Clang自动补全
Plugin 'clang-complete'
" 插件:语法提示
Bundle 'scrooloose/syntastic'
Plugin 'winmanager' 
" taglist depend ctag
" Plugin 'taglist.vim' 

" Taglist配置
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1

" Taglist与Winmanager配合配置
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0 
nmap <C-W><C-F> :FirstExplorerWindow<cr> 
nmap <C-W><C-B> :BottomExplorerWindow<cr> 
nmap <silent> <F8> :WMToggle<cr> 
" 配置进入vim时自动打开winmanager
"let g:AutoOpenWinManager = 1

" vim-airline 配置
let g:airline_theme='luna'
set guifont=Liberation\ Mono\ for\ Powerline\ 10
" powerline字体补丁配置
let g:airline_powerline_fonts = 1
" airline top-tabline配置
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = "\u2b80"
let g:airline#extensions#tabline#left_alt_sep = "\u2b81"
set laststatus=2

" airline symbols 配置
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'
let g:airline_symbols.linenr = '+'
let g:airline_symbols.branch = '|'
let g:airline_symbols.paste = '|'
let g:airline_symbols.whitespace = '|'
" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" 缩进配置
" indent_guides配置(填充缩进)
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 1
"let g:indent_guides_guide_size = 1 
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
" indentLine配置(虚线缩进)
" map <leader>lt :IndentLinesToggle<CR>

" regular config
" 语法高亮
syntax on

" 搜索和匹配
set showmatch			" 高亮匹配的括号
set matchtime=5 		" 匹配括号高亮的时间（单位:0.1senconds）
set hlsearch			" 高亮查找
set formatoptions=tcrqn 	" 自动格式化
set autoindent 			" 继承缩进方式
set smartindent 		" C程序自动缩进
set cindent 			" C样式的缩进
set nobackup			" 关闭备份
set nowritebackup		" 关闭写入备份
set noswapfile			" 关闭交换文件
set showcmd			" 显示输入命令
set laststatus=2		" 总是显示状态栏
set textwidth=80		" 内容宽度
set cc=80			" 显示80列的竖线
set clipboard+=unnamed 		" 共享剪切板

" 系统配色
syntax enable
colorscheme solarized 
let g:colors_name='solarized'
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'

"colorscheme molokai 
"let g:molokai_original=1

" cursorline配色
set cursorline
hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkred guifg=white

" YouComplete
"nmap <F4> :YcmDiags<CR>
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_error_symbol = '>>'
"let g:ycm_warning_symbol = '>*'
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_tags_files=1	" 开启YCM基于标签引擎
"let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
"let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项
"let g:ycm_seed_identifiers_with_syntax=1 " 语法关键字补全
"let g:ycm_confirm_extra_conf = 0 " 禁止手动确认导入配置
" 自动关闭补全窗口
"set completeopt=longest,menu                                                                                                                                                                                      
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif   

" Syntastic
let g:syntastic_always_populate_loc_list = 1

" 彩虹括号配置
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

