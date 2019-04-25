" this is a vim config file

" display number at left line
set number

" display current line
set cursorline

" display invisible characters 
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" can undo
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

" かっこの左側を押すと右側も出てくるような設定
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>


" use clipborad when yank
set clipboard+=unnamed

" coloring
:syntax on

" tab config
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

let OSTYPE = system('uname')
if OSTYPE == "Darwin\n"
  ""ここにMac向けの設定
  
  " for display file tree
  execute pathogen#infect()

  "キーマップ。（ctrl+nで起動できるように）
  map <C-n> :NERDTreeToggle<CR>
  
  " ============== this part is need for neobundle ===============
  if &compatible
    set nocompatible               " Be iMproved
  endif
  
  " Required:
  set runtimepath+=/Users/noharamasato/.vim/bundle/neobundle.vim/
  
  " Required:
  call neobundle#begin(expand('/Users/noharamasato/.vim/bundle'))
  
  " Let NeoBundle manage NeoBundle
  " Required:
  NeoBundleFetch 'Shougo/neobundle.vim'
  
  " Add or remove your Bundles here:
  NeoBundle 'Shougo/neosnippet.vim'
  NeoBundle 'Shougo/neosnippet-snippets'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'flazz/vim-colorschemes'
  NeoBundle 'kana/vim-submode'
  
  " You can specify revision/branch/tag.
  NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
  
  " Required:
  call neobundle#end()
  
  " Required:
  filetype plugin indent on
  " ===============================================================
  
  " If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
  NeoBundleCheck
  
  "隠しファイルをデフォルトで表示
  let NERDTreeShowHidden = 1
  
elseif OSTYPE == "Linux\n"
  ""ここにLinux向けの設定
endif
