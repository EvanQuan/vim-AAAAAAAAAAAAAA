let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.vim/plugged/vim-AAAAAAAAAAAAAA
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +25 syntax/AAAAAAAAAAAAAA.vim
badd +1 test/define_subroutine.AAAAAAAAAAAAAA
argglobal
silent! argdel *
$argadd syntax/AAAAAAAAAAAAAA.vim
edit syntax/AAAAAAAAAAAAAA.vim
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 16 + 26) / 52)
exe '2resize ' . ((&lines * 20 + 26) / 52)
exe '3resize ' . ((&lines * 11 + 26) / 52)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 27 - ((8 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 056|
wincmd w
argglobal
if bufexists('/usr/local/share/vim/vim81/doc/syntax.txt') | buffer /usr/local/share/vim/vim81/doc/syntax.txt | else | edit /usr/local/share/vim/vim81/doc/syntax.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 234 - ((8 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
234
normal! 020|
wincmd w
argglobal
if bufexists('test/define_subroutine.AAAAAAAAAAAAAA') | buffer test/define_subroutine.AAAAAAAAAAAAAA | else | edit test/define_subroutine.AAAAAAAAAAAAAA | endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 017|
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 16 + 26) / 52)
exe '2resize ' . ((&lines * 20 + 26) / 52)
exe '3resize ' . ((&lines * 11 + 26) / 52)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
