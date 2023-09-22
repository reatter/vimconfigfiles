" vimrc for generic bindings (non-nvim non-IntelliJ)

" settings
set autochdir
set clipboard+=unnamedplus
set hls
set ignorecase smartcase
set number
set path+='c:/Users/lannert/','c:/Users/lannert/python'
set relativenumber
set tsr+=C:\\Users\\lannert\\vim\\openthesaurus.txt
set scrolloff=5
set noswapfile " backups in VCS

" keymaps

""" Remap for dealing with word wrap
nnoremap J gjzz
nnoremap K gkzz


" leader mapping
nnoremap <leader>v :tabedit c:/Users/lannert/.vimrc<CR>
nnoremap <leader>V :tabedit c:/Users/lannert/AppData/local/nvim/init.lua<CR>

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



