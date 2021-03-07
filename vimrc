


"normal configure
map <F5> :set mouse=a<CR>
map <F6> :set mouse=<CR>
"set mouse=a		"可以在buffer的任何地方使用鼠标
set hlsearch		"显示高亮搜索
set tabstop=4		"设置tab长度为4
set shiftwidth=4	"设置自动对齐的缩进级别
let mapleader=","	"設置<leader>鍵爲逗號
inoremap jj <Esc>	"将ESC映射为两次j键
"set clipboard=unnamed
set clipboard=unnamedplus

"table键设置为四个空格
set ts=4
set expandtab
set autoindent

"控屏相关操作
map <leader>E :bp<CR>	"','+ e切换上一个buf
map <leader>r :bn<CR>	"','+ r切换下一个buf
map <leader>e :b#<CR>   "','+ e切换前一个buf
nnoremap <leader>q <C-w>q
nnoremap ww <C-w>w 		"将Ctrl+w映射为w
nnoremap w= <C-w>=      "将分屏尺寸恢复均等
nnoremap <leader>k <C-w>k "向上移动光标    
nnoremap <leader>j <C-w>j "向下移动光标  
nnoremap <leader>h <C-w>h "向左移动光标                        
nnoremap <leader>l <C-w>l "向右移动光标

nnoremap <leader>K <C-w>K "将当前分屏移动到上面
nnoremap <leader>J <C-w>J "将当前分屏移动到下面
nnoremap <leader>H <C-w>H "将当前分屏移动到左边
nnoremap <leader>L <C-w>L "将当前分屏移动到右边

"vmap <C-c> "+y

"tagbar
 map <silent> <F4> :TagbarToggle<CR>        "按F9即可打开tagbar界面
 let g:tagbar_ctags_bin = 'ctags'                       "tagbar以来ctags插件
 let g:tagbar_left = 1                                          "让tagbar在页面左侧显示，默认右边
 let g:tagbar_width = 40                                     "设置tagbar的宽度为30列，默认40
 let g:tagbar_autofocus = 1                                "这是tagbar一打开，光标即在tagbar页面内，默认在vim打开的文件内
 let g:tagbar_sort = 0                                         "设置标签不排序，默认排序 

"nerdtree
map <F9> :NERDTreeToggle<CR>
map <F9> :NERDTreeToggle<CR>				"按F10即可打开NerdTree界面
let g:NERDTreeWinSize = 30					"设定NERDTree视窗大小
let g:NERDTreeWinPos = 1						"让NERDTree显示在右边

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope 自动加载cscope.out文件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")  
    set csprg=/usr/bin/cscope  
    set csto=0 
    set cst  
    set csverb  
    set cspc=3 
    set nocsverb
    "add any database in current dir  
    if filereadable("cscope.out")  
        cs add cscope.out  
    "else search cscope.out elsewhere  
    else 
        let cscope_file=findfile("cscope.out",".;")  
        let cscope_pre=matchstr(cscope_file,".*/")  
        if !empty(cscope_file) && filereadable(cscope_file)  
            exe "cs add" cscope_file cscope_pre
            set csverb
        endif        
    endif  
endif

"LeaderF
map <leader>F :LeaderfFunction<CR>
map <leader>t :LeaderfLine<CR>
map <leader>g :Leaderf rg 

let g:Lf_ReverseOrder = 1

	map <C-_> :cstag <C-R>=expand("<cword>")<CR><CR>
	map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>                                                                           
    map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>

	nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>                                                                          
	nmap <leader>d :cs find g <C-R>=expand("<cword>")<CR><CR>                                                                          
	nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>                                                                          
	nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>                                                                          
	nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>                                                                          
	nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>                                                                          
	nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>                                                                        
	nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>                                                                          
	nmap <C-_>a :cs find a <C-R>=expand("<cword>")<CR><CR>                                                                          
																																	
	" Using 'CTRL-spacebar' then a search type makes the vim window                                                                 
	" split horizontally, with search result displayed in                                                                           
	" the new window.                                                                                                               
																																	
	nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>                                                                     
	nmap <leader>dd :scs find g <C-R>=expand("<cword>")<CR><CR>                                                                     
	nmap <leader>cc :scs find c <C-R>=expand("<cword>")<CR><CR>                                                                     
	nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>                                                                     
	nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>                                                                     
	nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>                                                                     
	nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>                                                                   
	nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>                                                                     
	nmap <C-Space>a :scs find a <C-R>=expand("<cword>")<CR><CR>









