" this is a vim config file

" display number at left line
set number

" display current line
set cursorline

" can undo
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

" かっこの左側を押すと右側も出てくるような設定
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
imap < <><LEFT>

" for display file tree
execute pathogen#infect()

"隠しファイルをデフォルトで表示
let NERDTreeShowHidden = 1
"キーマップ。（ctrl+nで起動できるように）
map <C-n> :NERDTreeToggle<CR>

" coloring
:syntax on

" tab config
set tabstop=2
set shiftwidth=2
