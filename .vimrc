" [方針] 最小限の設定で基本的なvimのコマンドを使いこなす"
set encoding=utf-8

" no need to save when changing buffer
set hidden

" display current line
set cursorline

" when split vertically go to below
set splitbelow

" display number at left line
set number

" display number when search word
set shortmess-=S

" 補完で候補を出すようにする
set pumheight=10

" highlight searching word
set hlsearch

" tab config
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" coloring
:syntax on

" change color of comment out line
hi Comment ctermfg=Cyan

" can undo
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

" change the current buffer
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>

" list buffers when pressing Ctrl x
nnoremap <C-x> :ls<CR>:b<Space>

" これ以下は使わなくなったやつ"
" display invisible characters
" set list
" set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" move to head and tail
" noremap <SPACE>h ^
" noremap <SPACE>l $

" load neobundle config file
" if has('mac')
"   let $VIM_CONF = $HOME . '/.vim/conf'
"   source $VIM_CONF/bundle-init.vim
" endif

" change number display
" nnoremap <Space>n :setlocal number! number?<CR>

" 空行をspace + enterで挿入
" noremap <Space><CR> o<ESC>

" nnoremap :terminal :terminal<CR>source $HOME/.bash_profile<CR>

" if has('mac')
"   " set terminal size
"   set termwinsize=7x0
" endif

" change esc to jj or jk
" inoremap <silent> jk <ESC>

" delete searching hifhlight
" nnoremap <ESC><ESC> :nohl<CR>

