"source ~/.vim/bundles.vim
set foldmethod=manual
set foldlevel=9
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set number
set autoindent
" Allow the cursor to go in to "invalid" places
set incsearch
set ch=2
set hidden
"----no backups
set nobackup
set nowb
set noswapfile
set lazyredraw
set cpoptions=B$
set laststatus=2
set colorcolumn=80
set showcmd
set showmode
set mousehide
set modifiable
set t_Co=256
set guifont=inconsolata-dz\ for\ Powerline
set guioptions=ac
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set ttyfast
set vb "visualbell
set stl=%f\ %m\ %r\ LN:\ %l/%L[%p%%]\ X:\ %c\ BF:\#%n\ [%b][0x%B]
set history=100
" Add the unnamed register to the clipboard
set clipboard+=unnamed
" When completing by tag, show the whole tag, not just the function name
set showfulltag
" Make the command-line completion better
set wildmenu
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class,*/obj/*,*/dest/*,*/images/*,*.pj,*.obj,*.lib,*.exe
set wildmode=list:full
set timeoutlen=500

"colorscheme molokai

"let mapleader = ","
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:Powerline_symbols = 'fancy'

map Y y$

"----window sizer
noremap <silent> <C-F8>  <c-w>v :e ~/Desktop/thesis<cr>GO
noremap <silent> <C-F9>  :vertical resize -10<cr>
noremap <silent> <C-F10> :resize +10<cr>
noremap <silent> <C-F11> :resize -10<cr>
noremap <silent> <C-F12> :vertical resize +10<cr>
noremap <silent> <leader>w8 :vertical resize 83<cr>
noremap <silent> <leader>wj :wincmd j<cr>:close<cr>
noremap <silent> <leader>wk :wincmd k<cr>:close<cr>
noremap <silent> <leader>wh :wincmd h<cr>:close<cr>
noremap <silent> <leader>wl :wincmd l<cr>:close<cr>
noremap <silent> <leader>wc :close<cr>
noremap <silent> <leader>ww :cclose<cr>
noremap <silent> <c-7> <c-w>>
noremap <silent> <c-8> <c-w>+
noremap <silent> <c-9> <c-w>+
noremap <silent> <c-0> <c-w>>
"----rot 13
noremap <c-up> ggg?G``
"----invert up down
noremap <c-down> :g/^/m0<cr>
"----reverse left right
noremap <c-left> <esc>:se rl!<cr> 
"----reverse inplace
noremap <c-right> :%s/\(\<.\{-}\>\)/\=join(reverse(split(submatch(1), '.\zs')), '')/g<cr>
noremap <leader>ms :%sort<cr>
"----customize my vim anytime
noremap  <f2>       <esc><c-w>v:e $MYVIMRC<cr>

"----easy motion
nmap <silent> ]] L<leader><leader>F
nmap <silent> [[ H<leader><leader>f
"----easy motion
nnoremap <a-f> f
nnoremap <a-F> F

nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
nnoremap \r :PyREPLToggle<CR>
nnoremap <a-,> ,
"----select sentence
nnoremap <a-s> (v)
nnoremap <a-a> mmggVG
"----quick save
nnoremap <c-s> :update<cr>
"----replace with yanked word
nnoremap <a-o> mzdiw"0P`z
nnoremap <a-i> mzyiw`z
"---- local replace
nnoremap gr gd[{V%:s/<c-r>///gc<left><left><left>
"---- global replace
nnoremap gR gD:%s/<c-r>///gc<left><left><left>
"---- insert line break and space
nnoremap <bs> i<bs><esc><right>
"nnoremap <space> i<space><esc>
nnoremap <cr> i<cr><Esc>
nnoremap <a-j> mzo<esc>`z
nnoremap <s-cr> mz<s-o><esc>`z
" search the current file for what's currently in the search register and display matches
nnoremap <silent> <leader>gs :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
" search the current file for the word under the cursor and display matches
nnoremap <silent> <leader>gw :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
" search the current file for the WORD under the cursor and display matches
nnoremap <silent> <leader>gW :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
nnoremap <leader>gg :vimgrep // ./**/*<left><left><left><left><left><left><left><left>
" swap two words
nnoremap <silent> <a-T> :s/\(\w*\%#\w*\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>``
nnoremap <silent> <a-t> :s/\(\w\+\)\(\_W\+\)\(\w*\%#\w*\)/\3\2\1/<CR>``
"----permission
nnoremap <leader>x :w<cr>:!chmod 755 %<cr>:e<cr>
"----apply vim config
nnoremap <c-F2> :mapclear<cr>:so %<cr>
"----case insensitive search
nnoremap <c-?> /\c
"----move between windows
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <silent> <a-/> :let @/=""<cr>
"----paste with ctrl V
nnoremap <a-v> "+gp
"----move line up down
nnoremap <a-n> :m+<cr>==
nnoremap <a-p> :m-2<cr>==
"----switch buffer
nnoremap <a-h> :bp<cr>
nnoremap <a-l> :bn<cr>
"---- <leader>v selects the just pasted text
nnoremap <leader>] V`]
"---- Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<cr>
"----view last opened file on startup
nnoremap <silent> <s-f1> :MRU<cr>
"----nerdtree
nnoremap <silent> <s-f2> :NERDTreeToggle<cr>
"----function def
nnoremap <silent> <s-f3> :TagbarToggle<cr>
"----send to REPL
nnoremap <a-x> :call system("screen -S s1 -p w1 -X stuff '".@+."\n'")<CR>
nnoremap <a-c> mmvip"+ygv
nnoremap <a-b> mmvab"+ygv
nnoremap <a-z> mm^v$"+ygv
  
"----send to REPL
inoremap <a-x> <c-o>vip"+y<c-o>:call system("screen -S s1 -p w1 -X stuff '".@+."\n'")<CR>
"----linebreak newline above
inoremap <s-cr> <c-o><s-o>
"----quick save
inoremap <c-s> <c-o>:update<cr>
"----undo
inoremap <c-z> <c-o>u
"---- insert global unique hash
inoremap <c-j>d <c-r>=substitute(system("uuidgen"), '.$', '', 'g')<CR>
"----(quit esc exit) insert mode
inoremap kj <esc>
inoremap jk <esc>
"----apply vim config
inoremap <c-F2>     <c-o>:mapclear<CR><c-o>:so %<CR>
"----nerdtree
inoremap <silent> <s-F2> <c-o>:NERDTreeToggle<CR>
"----function def
inoremap <silent> <s-F3> <c-o>:TagbarToggle<CR>
"----move cursor
inoremap <a-a>      <c-o>ge<c-o>ge<right>
inoremap <a-e>      <c-o>e<Right>
inoremap <a-f>      <S-Right>
inoremap <a-b>      <S-Left>
inoremap <c-a> <c-o>^
inoremap <c-e> <c-o>$
"----move line
inoremap <a-n> <Esc>:m+<CR>==gi
inoremap <a-p> <Esc>:m-2<CR>==gi
"----delete word
inoremap <a-d> <c-o>daw
"----delete char
inoremap <c-d> <del>
"----ctrl+v paste
inoremap <c-v> <esc>"+gpi
"----move cursor UDRL
inoremap <a-h> <left>
inoremap <a-j> <down>
inoremap <a-k> <up>
inoremap <a-l> <right>

"----Emacs key bindings
cnoremap <C-D>      <Del>
cnoremap <a-b>      <s-left>
cnoremap <a-f>      <S-right>
cnoremap <a-d>      <S-right><S-W>
cnoremap <c-a>      <home>
cnoremap <c-e>      <end>
cnoremap <c-b>      <left>
cnoremap <c-f>      <right>
cnoremap <c-n>      <pageDown>
cnoremap <c-p>      <pageUp>
"----ctrl+v paste
cnoremap <c-v> <c-r>+

 
"----sendto REPL
vnoremap <a-x> "+y:call system("screen -S s1 -p w1 -X stuff '".@+."\n'")<CR><Esc>
vnoremap <a-v> <c-w>p"*p<c-w>p

"----quit visual mode
vnoremap <space> <esc>
"----move line up down
vnoremap <a-n> :m'>+<cr>gv=gv
vnoremap <a-p> :m-2<cr>gv=gv
"----copy with ctrl C
vnoremap <c-c> "+y
"----quick save
vnoremap <c-s> <esc>:update<cr>


nmap <silent> <leader>qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

autocmd BufEnter * silent! lcd %:p:h

"----toggle relative number
let g:relnum = 0
function! ToggleRelNum()
  if &number
    set relativenumber
  else
    set number
  endif
endfunction
nnoremap <silent> gt :call ToggleRelNum()<cr>

"----move cursor to the middle of the line
function! s:Gm()
    execute 'normal! ^'
    let first_col = virtcol('.')
      execute 'normal! g_'
    let last_col  = virtcol('.')
      execute 'normal! ' . (first_col + last_col) / 2 . '|'
endfunction
nnoremap <silent> gm :call <SID>Gm()<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip  " MacOSX/Linux
set wildignore+=tmp\*,*.swp,*.zip,*.exe   " Windows

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"----search skip comment
"function! SearchNoComment(str, opt)
    "let b:found = 0
    "while (b:found == 0)
        "call search(a:str, a:opt)
        "let b:name=synIDattr( synID(line('.'), col('.'), 1), "name")
        ""Whether it's within a comment?
        "if b:name !~? "comment"
            "let b:found=1
        "endif
    "endwhile
"endfunction
"nnoremap n :silent call SearchNoComment('<C-R>=@/<CR>', '')<CR>
"nnoremap N :silent call SearchNoComment('<C-R>=@/<CR>', 'b')<CR>

filetype plugin indent on
source ~/.vim/bundle/sparkup/sparkup.vim
source ~/.vim/bundle/browser-refresh.vim/plugin/browser-refresh.vim
call pathogen#infect()

" Disable AutoComplPop. Comment out this line if AutoComplPop is not installed.
let g:acp_enableAtStartup = 0
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><c-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType less setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion, which require computational power and may stall the vim. 
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

let g:neosnippet#snippets_directory='~/.vim/snippets'
