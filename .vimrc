set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
call vundle#begin()
" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
" Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名'
" 只是此处的用户名可以省略
" Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
" Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
" Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'DoxygenToolkit.vim'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'vim-scripts/DrawIt'
" Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
" Plugin 'SirVer/ultisnips'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'OmniCppComplete'
" Plugin 'derekwyatt/vim-protodef'
" Plugin 'fholgado/minibufexpl.vim'
" Plugin 'gcmt/wildfire.vim'
" Plugin 'sjl/gundo.vim'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'suan/vim-instant-markdown'
" Plugin 'lilydjwg/fcitx.vim'

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须
" 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!`
" 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
"
" '设置编码'
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme phd

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
" set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap 
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 自适应不同语言的智能缩进
filetype indent on
" 依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用
set smartindent

" 将制表符扩展为空格
" set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 设置粘贴模式
set paste

" 设置tags
set tags+=~/tags

" 设置leader按键
let mapleader=";"
nmap <c-m> %
imap <c-m> <Esc>%i

" Indent Guides（https://github.com/nathanaelkane/vim-indent-guides ）
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
" 操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" vim-fswitch（https://github.com/derekwyatt/vim-fswitch ）
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr> 
nmap <A-o> :FSHere<cr>
imap <A-o> <Esc>:FSHere<cr>

" vim-signature（https://github.com/kshenoy/vim-signature ）
let g:SignatureMap = {
   \'Leader'             :  "m",
   \'PlaceNextMark'      :  "m,",
   \'ToggleMarkAtLine'   :  "m.",
   \'PurgeMarksAtLine'   :  "m-",
   \'DeleteMark'         :  "dm",
   \'PurgeMarks'         :  "mda",
   \'PurgeMarkers'       :  "m<BS>",
   \'GotoNextLineAlpha'  :  "']",
   \'GotoPrevLineAlpha'  :  "'[",
   \'GotoNextSpotAlpha'  :  "`]",
   \'GotoPrevSpotAlpha'  :  "`[",
   \'GotoNextLineByPos'  :  "]'",
   \'GotoPrevLineByPos'  :  "['",
   \'GotoNextSpotByPos'  :  "mn",
   \'GotoPrevSpotByPos'  :  "mp",
   \'GotoNextMarker'     :  "[+",
   \'GotoPrevMarker'     :  "[-",
   \'GotoNextMarkerAny'  :  "]=",
   \'GotoPrevMarkerAny'  :  "[=",
   \'ListLocalMarks'     :  "ms",
   \'ListLocalMarkers'   :  "m?",
\}

" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
" let tagbar_left=1 
" " 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>tt :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
"
let g:tagbar_type_cpp = {
	\'kinds' : [
	\	'c:classes:0:1',
	\	'd:macros:0:1',
	\	'e:enumerators:0:0', 
	\	'f:functions:0:1',
	\	'g:enumeration:0:1',
	\	'l:local:0:1',
	\	'm:members:0:1',
	\	'n:namespaces:0:1',
	\	'p:functions_prototypes:0:1',
	\	's:structs:0:1',
	\	't:typedefs:0:1',
	\	'u:unions:0:1',
	\	'v:global:0:1',
	\	'x:external:0:1'
	\],
	\'sro' : '::',
	\'kind2scope' : {
	\	'g' : 'enum',
	\	'n' : 'namespace',
	\	'c' : 'class',
	\	's' : 'struct',
	\	'u' : 'union'
	\},
	\
	\'scope2kind' : {
	\	'enum' : 'g',
	\	'namespace' : 'n',
	\	'class' : 'c',
	\	'struct' : 's',
	\	'union' : 'u'
	\}
\}

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" YCM Plugin Setting
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" Multi-cursor setting
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_skip_key='<C-k>'

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
" 常用操作
" -- <cr> ：打开选中文件；
" -- r，刷新工程目录文件列表；
" -- I（大写），显示/隐藏隐藏文件；
" -- m，出现创建/删除/剪切/拷贝操作列表。
nmap <Leader>ff :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>

" Doxygen Document Tools Setting
let g:DoxygenToolkit_briefTag_pre="\brief "
let g:DoxygenToolkit_paramTag_pre="\param "
let g:DoxygenToolkit_returnTag="\return "
let g:DoxygenToolkit_blockHeader="///"
let g:DoxygenToolkit_blockFooter="///"
let g:DoxygenToolkit_authorName="Albert.xu, windxu@126.com"

" OmniCppComplate Setting
set nocp
set ofu=syntaxcomplete#Complete
set completeopt=menu,longest,menuone

let OmniCpp_NamespaceSearch = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 
let OmniCpp_MayCompleteDot = 1   
let OmniCpp_MayCompleteArrow = 1 
let OmniCpp_MayCompleteScope = 1 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_SelectFirstItem = 2
let OmniCpp_DisplayMode=1

au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

let g:airline_theme="molokai" 

""""""""""""""""""""""""""""""
" Airline Setting
""""""""""""""""""""""""""""""
"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   
 
"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
"我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" 关闭状态显示空白符号计数,这个对我用处不大"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = '⭡'

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'

" 在Gvim中我设置了英文用Hermit， 中文使用 YaHei Mono "
if has('win32')
  set guifont=Hermit:h13
  set guifontwide=Microsoft_YaHei_Mono:h12
endif
