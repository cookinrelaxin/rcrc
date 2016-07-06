filetype off

execute pathogen#infect()
filetype plugin indent on
syntax on
set autoindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number
set ruler
set acd
colo mustang
"colorscheme molokai
"colorscheme fahrenheit
"colorscheme dante
" colorscheme gruvbox
"colorscheme monokai
"colo vividchalk <-- dope!
"colo inkpot
"colo candypaper
"colo badwolf
"colo mushroom "<-- best!

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"NERDTree mappings

map <F2> :NERDTreeToggle<CR>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

"camelcasemotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

let g:SuperTabDefaultCompletionType = "context"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

let g:snipMate = get(g:, 'snipMate', {})
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['vs'] = 'vs,fs'
let g:snipMate.scope_aliases['fs'] = 'vs,fs'

"general
let mapleader = "\<Space>"

nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>a <S-a>
nmap <leader>b <S-g>
nmap <leader>o <C-o>
nmap <leader>p <C-p>
nmap <leader>ca <S-~>
nmap <leader>v <C-v>
nmap <leader>h ^

"opening and closing files
nmap <leader>s :split<cr>
nmap <leader>e :e
nmap <leader>t :tabe<cr>

"movement
noremap <leader>l gg
noremap , <S-g>

"yanking
noremap m yy

noremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


inoremap jk <Esc>
cnoremap jk <Esc>
"vnoremap <nowait> jk <Esc>

noremap <S-l> gt
noremap <S-h> gT

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

noremap <backspace> :e #<cr>

"paste
:nmap <leader>1 A <esc>p

"fugitive
nmap <leader>gs :Gstatus<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gb :Gblame<cr>
nmap <leader>gl :Glog<cr>
nmap <leader>gp :Gpush<cr>
nmap <leader>gw :Gwrite<cr>

"make
nmap <leader>mm :make<cr>
nmap <leader>mc :make clean<cr>
nmap <leader>r :!./*.bin<cr>

"vim
nmap <leader>z :tabe $MYVIMRC<cr>
nmap <leader>o :so $MYVIMRC<cr>

"invert number keys
" inoremap 1 !
" inoremap 2 @
" inoremap 3 #
" inoremap 4 $
" inoremap 5 %
" inoremap 6 ^
" inoremap 7 &
" inoremap 8 *
" inoremap 9 (
" inoremap 0 )
" 
" inoremap ! 1
" inoremap @ 2
" inoremap # 3
" inoremap $ 4
" inoremap % 5
" inoremap ^ 6
" inoremap & 7
" inoremap * 8
" inoremap ( 9
" inoremap ) 0

nmap <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>w <Plug>(easymotion-bd-w)

map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

"preview images
command! -nargs=1 Preview :!open -a Preview ~/graphics/breakout/assets/textures/<f-args>
"nmap <leader>p :Preview<space>

"cpp conceals
"autocmd VimEnter * syntax match Todo /!/ conceal cchar=¬

" augroup conceals
"     autocmd!
"     autocmd VimEnter * syntax match Concealed /!=/ conceal cchar=≠
"     autocmd VimEnter * syntax match Concealed />=/ conceal cchar=≥
"     autocmd VimEnter * syntax match Concealed /<=/ conceal cchar=≤
"     autocmd VimEnter * syntax match Concealed /==/ conceal cchar=≡
"
"     "autocmd VimEnter * syntax match Concealed /\s=\s/ conceal cchar=
"
"     autocmd VimEnter * syntax match Concealed /1\/2/ conceal cchar=½
"
"     autocmd VimEnter * syntax match Concealed /{/ conceal cchar=⎡
"     autocmd VimEnter * syntax match Concealed /}/ conceal cchar=⎦
"
"     autocmd VimEnter * syntax match Concealed /(/ conceal cchar=⸢
"     autocmd VimEnter * syntax match Concealed /)/ conceal cchar=⸥
"
"     autocmd VimEnter * syntax match Concealed /\\n/ conceal cchar=⏎
"
"     autocmd VimEnter * syntax match Concealed /;/ conceal cchar=。
"     autocmd VimEnter * syntax match Concealed /,/ conceal cchar=、
"
"     autocmd VimEnter * syntax match Concealed /_/ conceal cchar=⎵
"
"     autocmd VimEnter * syntax match Concealed /\/\// conceal cchar=†
"
"     autocmd VimEnter * syntax match Concealed /++/ conceal cchar=♯
"     autocmd VimEnter * syntax match Concealed /--/ conceal cchar=♭
"
"
"     autocmd VimEnter * syntax keyword Concealed not conceal cchar=¬
"     autocmd VimEnter * syntax keyword Concealed and conceal cchar=∧
"     autocmd VimEnter * syntax keyword Concealed or conceal cchar=∨
"     autocmd VimEnter * syntax keyword Concealed true conceal cchar=⊤
"     autocmd VimEnter * syntax keyword Concealed false conceal cchar=⊥
"
"     autocmd VimEnter * syntax keyword Concealed int conceal cchar=ℤ
"     autocmd VimEnter * syntax keyword Concealed float conceal cchar=ℝ
"
"
"     autocmd VimEnter * syntax keyword Concealed nullptr conceal cchar=Ø
"
"     autocmd VimEnter * syntax keyword Concealed return conceal cchar=⟶
"
"
"     autocmd VimEnter * set conceallevel=2
"     autocmd VimEnter * hi clear Conceal
" augroup END
