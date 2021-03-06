"---------------------------------------------------------------------------
" 編集に関する設定:
"
" タブの画面上での幅
set tabstop=4
" オートインデント時にインデントする文字数
set shiftwidth=4
" タブをスペースに展開しない (expandtab:展開する)
set noexpandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=2
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
" 日本語整形スクリプト(by. 西岡拓洋さん)用の設定
let format_allow_over_tw = 1    " ぶら下り可能幅
" ヤンクしたデータをクリップボードに入れる
set clipboard=unnamed,autoselect

"---------------------------------------------------------------------------
" 色に関する設定：
"
" hybridをチョイス
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
" シンタックス
syntax on
" 行番号の色を設定
hi LineNr ctermfg=0
hi CursorLineNr ctermbg=4 ctermfg=0
set cursorline
hi clear CursorLine
hi NonText ctermfg=0
hi SpecialKey ctermfg=0
hi MatchParen ctermbg=1

"---------------------------------------------------------------------------
" GUI固有ではない画面表示の設定:
"
" 行番号を非表示 (number:表示)
set number
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (list:表示)
set list
" どの文字でタブや改行を表示するかを設定
set listchars=nbsp:-,eol:¬,tab:▸\ 
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表
set showcmd
" タイトルバーの表示を消す(notitle)
set title
" markdownのハイライトを有効にする
set syntax=markdown
au BufRead,BufNewFile *.md set filetype=markdown
" rbファイルはタブをソフトタブにする
au BufNewFile,BufRead *.rb set expandtab tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.html.erb set expandtab tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.slim set expandtab tabstop=2 shiftwidth=2

"---------------------------------------------------------------------------
" NeoBundleの設定 
" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" slimをハイライトする
NeoBundle 'slim-template/vim-slim'
" ソフトタブ（スペース）インデントをハイライトする
NeoBundle 'Yggdroot/indentLine'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
