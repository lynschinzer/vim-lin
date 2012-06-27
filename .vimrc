set foldmethod=manual
set foldlevel=9
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set number
set autoindent
" Allow the cursor to go in to "invalid" places
set virtualedit=onemore
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

set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

set vb
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set history=100
let mapleader = ","
let g:tagbar_left = 1
let g:tagbar_width = 30
"----quick save
nnoremap <c-s> :update<CR>
inoremap <c-s> <c-o>:update<CR>
vnoremap <c-s> <Esc>:update<CR>

"----undo
inoremap <c-u> <c-o>u

"----delete word under cursor
inoremap <a-d> <c-o>daw
inoremap <c-d> <del>

"---- local replace
nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>

"---- global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

"---- insert line break
nnoremap <C-M> i<CR><ESC>

nnoremap <Space> i<Space><Esc>
inoremap <C-J>d <C-r>=substitute(system("uuidgen"), '.$', '', 'g')<CR>
" Search the current file for what's currently in the search register and display matches
nnoremap <silent> ,gs :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" Search the current file for the word under the cursor and display matches
nnoremap <silent> ,gw :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" Search the current file for the WORD under the cursor and display matches
nnoremap <silent> ,gW :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
nnoremap ,gg :vimgrep // ./**/*<left><left><left><left><left><left><left><left>
nmap ,x :w<cr>:!chmod 755 %<cr>:e<cr>

" Swap two words
nnoremap <silent> gw :s/\(\w*\%#\w*\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>``
nnoremap <silent> <a-t> :s/\(\w\+\)\(\_W\+\)\(\w*\%#\w*\)/\3\2\1/<CR>``
noremap <F3> ggg?G``
noremap <F4> <Esc>:se rl!<CR> 
noremap <F2> <Esc>:e $MYVIMRC<CR>
nnoremap <silent> <s-F1> :MRU<CR>
nnoremap <silent> <s-F2> :NERDTreeToggle<CR>
inoremap <silent> <s-F2> <c-o>:NERDTreeToggle<CR>
nnoremap <silent> <s-F3> :TagbarToggle<CR>
inoremap <silent> <s-F3> <c-o>:TagbarToggle<CR>
nnoremap <c-F2> :so %<CR>
inoremap <c-F2>     <c-o>:so %<CR>
inoremap <a-a>      <c-o>ge<c-o>ge<Right>
inoremap <a-e>      <c-o>e<Right>
cnoremap <a-f>      <S-Right>
cnoremap <a-b>      <S-Left>
inoremap <a-f>      <S-Right>
inoremap <a-b>      <S-Left>
cnoremap <c-a>      <Home>
cnoremap <c-e>      <End>
cnoremap <c-b>      <Left>
cnoremap <c-f>      <Right>
cnoremap <c-n>      <PageDown>
cnoremap <c-p>      <PageUp>

noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>
noremap <silent> ,s8 :vertical resize 83<CR>
noremap <silent> ,cj :wincmd j<CR>:close<CR>
noremap <silent> ,ck :wincmd k<CR>:close<CR>
noremap <silent> ,ch :wincmd h<CR>:close<CR>
noremap <silent> ,cl :wincmd l<CR>:close<CR>
noremap <silent> ,cc :close<CR>
noremap <silent> ,cw :cclose<CR>
noremap <silent> <C-7> <C-W>>
noremap <silent> <C-8> <C-W>+
noremap <silent> <C-9> <C-W>+
noremap <silent> <C-0> <C-W>>

nnoremap <C-V> "+gp
inoremap <C-V> <ESC>"+gpi
cnoremap <C-V> <c-r>+
vnoremap <C-C> "+y

"----move between windows
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <silent> <a-/> :let @/=""<CR>
 
"----move line up down
nnoremap <a-n> :m+<CR>==
nnoremap <a-p> :m-2<CR>==
inoremap <a-n> <Esc>:m+<CR>==gi
inoremap <a-p> <Esc>:m-2<CR>==gi
vnoremap <a-n> :m'>+<CR>gv=gv
vnoremap <a-p> :m-2<CR>gv=gv

"----move cursor UDRL
inoremap <a-h> <left>
inoremap <a-j> <down>
inoremap <a-k> <up>
inoremap <a-l> <right>

inoremap jk <esc>
inoremap kj <esc>

autocmd BufEnter * silent! lcd %:p:h

colorscheme molokai
set t_Co=256
set guioptions=ac

function! s:Gm()
    execute 'normal! ^'
    let first_col = virtcol('.')
      execute 'normal! g_'
    let last_col  = virtcol('.')
      execute 'normal! ' . (first_col + last_col) / 2 . '|'
endfunction
nnoremap <silent> gm :call <SID>Gm()<CR>

filetype plugin on
call pathogen#infect()
