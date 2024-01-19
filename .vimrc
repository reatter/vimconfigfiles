" vimrc for generic bindings (non-nvim non-IntelliJ)

" settings
set autochdir
set clipboard+=unnamedplus
set hls
set ignorecase smartcase
set path+='$HOME','$HOME/python'
set number relativenumber " do both!
"THESAURUS
"Add personal synonym files
if !empty(glob("~/vim"))
    set thesaurus+=$HOME/vim/openthesaurus.txt
endif
set scrolloff=5
set noswapfile " backups in VCS
set wildmode=longest:full,full
set visualbell

" keymaps

""" Remap for dealing with word wrap


" leader maßsing
nnoremap <leader>v :tabedit $HOME/.vimrc<CR>
nnoremap <leader>V :tabedit $HOME/AppData/local/nvim/init.lua<CR>

nnoremap <leader>h :noh<CR>
nnoremap <leader>s ]s
nnoremap <leader>S [s

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
"
""" häufige Fehler beim Tippen automatisch korrigieren
inoreabbrev dsa das
inoreabbrev dei die
inoreabbrev dre der
inoreabbrev teh the
inoreabbrev onject object
inoreabbrev Onject Object

""" command line abbreviations
cnoreabbrev Wq wq
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev Q! q1

""" spellchecking automatically in txt
augroup
	autocmd!
	autocmd FileType text setlocal spell
	autocmd BufRead,BufNewFile *.txt,*.md setlocal spell
	set spelllang=de
augroup END
