" vimrc for generic bindings (non-nvim non-IntelliJ)

" settings
set autochdir
set clipboard+=unnamedplus
set hls
set ignorecase smartcase
set path+='c:/Users/lannert/','c:/Users/lannert/python'
set number relativenumber " do both!
set tsr+=C:/Users/lannert/vim/openthesaurus.txt
set scrolloff=10
set noswapfile " backups in VCS
set wildmode=longest:full,full

" keymaps

""" Remap for dealing with word wrap


" leader mapping
nnoremap <leader>v :tabedit $HOME/.vimrc<CR>
nnoremap <leader>V :tabedit $HOME/AppData/local/nvim/init.lua<CR>

nnoremap <leader>h :noh<CR>
nnoremap <leader>s ]s
nnoremap <leader>S [s

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


" abbreviations
inoreabbrev Maximilian So'n
inoreabbrev Loos Opfer

""" häufige Fehler beim Tippen automatisch korrigieren
inoreabbrev dsa das
inoreabbrev dei die
inoreabbrev dre der
inoreabbrev teh the
inoreabbrev onject object
inoreabbrev Onject Object

""" commandline abbreviations
cnoreabbrev Wq wq
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev Q! q1

""" spellchecking automatically in txt
set spelllang=de
augroup
	autocmd!
	autocmd FileType text setlocal spell
	autocmd BufRead,BufNewFile *.txt setlocal spell
augroup END
