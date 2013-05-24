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
Bundle 'Shougo/neocomplcache'    " popup completion
Bundle 'garbas/vim-snipmate'     " code snippets
Bundle 'honza/snipmate-snippets' " snippet templates
Bundle 'Shougo/neosnippet'       " snippet templates
Bundle 'ervandew/supertab'       " tab completion
Bundle 'rstacruz/sparkup'        " zen-coding equivalence

" snipmate dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'tsaleh/vim-matchit'      " match <tags>
Bundle 'Lokaltog/vim-easymotion' " visual hints

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'       " match surround symbols
Bundle 'scrooloose/nerdcommenter' " toggle comments
Bundle 'sjl/gundo.vim'            " visualize undo tree

"Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-smartinput'             " auto close brackets
Bundle 'godlygeek/tabular'               " align symbols
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'    " file browser
Bundle 'majutsushi/tagbar'      " function list
Bundle 'humiaozuzu/TabBar'      " tabs
Bundle 'mileszs/ack.vim'        " faster grep
Bundle 'kien/ctrlp.vim'         " fuzzy file finder
Bundle 'tpope/vim-fugitive'     " git integration
Bundle 'Lokaltog/vim-powerline' " fancy status line
Bundle 'scrooloose/syntastic'   " static syntax check

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
