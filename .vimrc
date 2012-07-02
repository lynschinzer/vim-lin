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
set guioptions=ac
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set ttyfast
set vb
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set history=100
" Add the unnamed register to the clipboard
set clipboard+=unnamed
" When completing by tag, show the whole tag, not just the function name
set showfulltag
" Make the command-line completion better
set wildmenu
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class
set wildmode=list:full
set timeoutlen=500

let mapleader = ","
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

command! Beautifier :r !~/dev/js-beautify/python/js-beautify -f -j %

"----quick save
nnoremap <c-s> :update<CR>
inoremap <c-s> <c-o>:update<CR>
vnoremap <c-s> <Esc>:update<CR>

"----replace with yanked word
nnoremap <a-o> mzdiw"0P`z
nnoremap <a-i> mzyiw`z

"----undo
inoremap <c-z> <c-o>u


"---- local replace
nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>

"---- global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

"---- insert line break and space
nnoremap <leader><leader> ,
nnoremap <BS> i<BS><ESC><right>
nnoremap <Space> i<Space><Esc>
nnoremap <a-j> i<cr><Esc>
inoremap <S-CR> <c-o><s-o>
nnoremap <C-M> mzo<esc>`z
nnoremap <S-CR> mz<s-o><esc>`z

"---- insert global unique hash
inoremap <C-J>d <C-r>=substitute(system("uuidgen"), '.$', '', 'g')<CR>
" search the current file for what's currently in the search register and display matches
nnoremap <silent> ,gs :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" search the current file for the word under the cursor and display matches
nnoremap <silent> ,gw :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" search the current file for the WORD under the cursor and display matches
nnoremap <silent> ,gW :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
nnoremap ,gg :vimgrep // ./**/*<left><left><left><left><left><left><left><left>
nmap ,x :w<cr>:!chmod 755 %<cr>:e<cr>

" swap two words
nnoremap <silent> gw :s/\(\w*\%#\w*\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>``
nnoremap <silent> <a-t> :s/\(\w\+\)\(\_W\+\)\(\w*\%#\w*\)/\3\2\1/<CR>``

vnoremap <space> <esc>
inoremap kj <esc>
inoremap jk <esc>

"----rot 13
noremap <c-up> ggg?G``

"----invert up down
noremap <c-down> :g/^/m0<CR>

"----reverse left right
noremap <c-left> <Esc>:se rl!<CR> 
noremap <c-right> :%s/\(\<.\{-}\>\)/\=join(reverse(split(submatch(1), '.\zs')), '')/g<CR>

"----customize my vim anytime
noremap  <F2>       <Esc><c-w>v:e $MYVIMRC<CR>
nnoremap <c-F2>     :mapclear<CR>:so %<CR>
inoremap <c-F2>     <c-o>:mapclear<CR><c-o>:so %<CR>

"----view last opened file on startup
nnoremap <silent> <s-F1> :MRU<CR>

"----tree file browser
nnoremap <silent> <s-F2> :NERDTreeToggle<CR>
inoremap <silent> <s-F2> <c-o>:NERDTreeToggle<CR>

"----jump around function def
nnoremap <silent> <s-F3> :TagbarToggle<CR>
inoremap <silent> <s-F3> <c-o>:TagbarToggle<CR>

"----terminal key behavior
inoremap <a-a>      <c-o>ge<c-o>ge<Right>
inoremap <a-e>      <c-o>e<Right>
cnoremap <a-f>      <S-Right>
inoremap <a-f>      <S-Right>
cnoremap <a-b>      <S-Left>
inoremap <a-b>      <S-Left>
cnoremap <c-a>      <Home>
cnoremap <c-e>      <End>
cnoremap <c-b>      <Left>
cnoremap <c-f>      <Right>
cnoremap <c-n>      <PageDown>
cnoremap <c-p>      <PageUp>

"----delete word under cursor
inoremap <a-d> <c-o>daw
inoremap <c-d> <del>
inoremap <c-b> <c-o>^
inoremap <c-f> <c-o>$
cnoremap <c-d> <del>

"----window sizer
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

"----copy paste with ctrl CV
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
nnoremap <a-h> :bp<CR>
nnoremap <a-l> :bn<CR>

"---- <leader>v selects the just pasted text
nnoremap <leader>v V`]
"---- Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

nmap <silent> ,qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

autocmd BufEnter * silent! lcd %:p:h

colorscheme molokai

"----toggle relative number
let g:relnum = 0
function! ToggleRelNum()
  if &number
    set relativenumber
  else
    set number
  endif
endfunction
nnoremap <silent> gt :call ToggleRelNum()<CR>


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

function! SearchNoComment(str, opt)
    let b:found = 0
    while (b:found == 0)
        call search(a:str, a:opt)
        let b:name=synIDattr( synID(line('.'), col('.'), 1), "name")
        "Whether it's within a comment?
        if b:name !~? "comment"
            let b:found=1
        endif
    endwhile
endfunction
nnoremap n :silent call SearchNoComment('<C-R>=@/<CR>', 'f')<CR>
nnoremap N :silent call SearchNoComment('<C-R>=@/<CR>', 'b')<CR>

filetype plugin indent on
call pathogen#infect()
