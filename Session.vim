let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/dev/repos/personal/terra-theme/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +32 lua/terra/init.lua
badd +51 lua/terra/themes/spring/day.lua
badd +24 ~/Documents/dev/repos/personal/terra-theme/vscode/src/themes/spring/night/colors.ts
badd +61 ~/Documents/dev/repos/personal/terra-theme/vscode/src/themes/spring/day/colors.ts
badd +19 lua/terra/highlights/defaults.lua
badd +43 lua/terra/types.lua
badd +10 lua/terra/config.lua
badd +6 lua/terra/themes/spring/night.lua
badd +55 lua/terra/actions/highlights.lua
badd +0 lua/terra/colors.lua
badd +4 ~/Documents/dev/repos/other/tokyonight.nvim/lua/tokyonight/treesitter.lua
badd +12 README.md
argglobal
%argdel
$argadd .
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit lua/terra/themes/spring/night.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
enew
file NvimTree_1
balt README.md
setlocal fdm=manual
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
balt README.md
setlocal fdm=indent
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
52
normal! zo
let s:l = 17 - ((16 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 08|
wincmd w
argglobal
if bufexists(fnamemodify("lua/terra/types.lua", ":p")) | buffer lua/terra/types.lua | else | edit lua/terra/types.lua | endif
if &buftype ==# 'terminal'
  silent file lua/terra/types.lua
endif
balt lua/terra/actions/highlights.lua
setlocal fdm=indent
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 43 - ((25 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 43
normal! 054|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/dev/repos/personal/terra-theme/vscode/src/themes/spring/night/colors.ts", ":p")) | buffer ~/Documents/dev/repos/personal/terra-theme/vscode/src/themes/spring/night/colors.ts | else | edit ~/Documents/dev/repos/personal/terra-theme/vscode/src/themes/spring/night/colors.ts | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/dev/repos/personal/terra-theme/vscode/src/themes/spring/night/colors.ts
endif
balt ~/Documents/dev/repos/personal/terra-theme/vscode/src/themes/spring/day/colors.ts
setlocal fdm=indent
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 24 - ((23 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
normal! 023|
wincmd w
3wincmd w
wincmd =
tabnext
edit lua/terra/types.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
enew
file NvimTree_2
balt ~/Documents/dev/repos/other/tokyonight.nvim/lua/tokyonight/treesitter.lua
setlocal fdm=manual
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
balt ~/Documents/dev/repos/other/tokyonight.nvim/lua/tokyonight/treesitter.lua
setlocal fdm=indent
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 46 - ((27 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 46
normal! 056|
wincmd w
wincmd =
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
