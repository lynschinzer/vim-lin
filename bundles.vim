" be improved
set nocompatible      

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

" required!
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache' "popup completion
Bundle 'garbas/vim-snipmate'  "code snippets
Bundle 'honza/snipmate-snippets'  "snippet templates
Bundle 'ervandew/supertab'    
Bundle 'rstacruz/sparkup'     "zen-coding equivalence

" snipmate dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
"Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-smartinput'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'humiaozuzu/TabBar'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'

"-------------
" Other Utils
" ------------
Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
" web backend
Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'tpope/vim-rails'
Bundle 'beyondwords/vim-jinja2'
"Bundle 'digitaltoad/vim-jade'

" web front end
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-haml'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
"Bundle 'groenewege/vim-less'
"Bundle 'wavded/vim-stylus'

" markup language
Bundle 'tpope/vim-markdown'

" Ruby
"Bundle 'tpope/vim-endwise'

" Scheme Lisp
Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'wlangstroth/vim-racket'

filetype plugin indent on     " required!
