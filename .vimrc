" vimrc for generic bindings (non-nvim non-IntelliJ)

" settings
set clipboard+=unnamedplus
set hls
set ignorecase smartcase
set number relativenumber " do both!
"THESAURUS
"Add personal synonym files
if !empty(glob("~/vim"))
    set thesaurus+=$HOME/vim/openthesaurus.txt
endif
set scrolloff=999
set noswapfile " backups in VCS
set wildmode=longest:full,full
set visualbell

" keymaps

inoremap kj <Esc>`.

" leader mapping
nnoremap <leader>v :tabedit $HOME/.vimrc<CR>
nnoremap <leader>V :tabedit $HOME/AppData/local/nvim/init.lua<CR>

" highlighting off
nnoremap <leader>h :noh<CR>

" spell checking
nnoremap <leader>s ]s
nnoremap <leader>S [s
nnoremap <leader>g z=`

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
	set spelllang=de,en
augroup END
