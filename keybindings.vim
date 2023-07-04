" $$\   $$\                    $$\       $$\                 $$\ $$\                               
" $$ | $$  |                   $$ |      \__|                $$ |\__|                              
" $$ |$$  / $$$$$$\  $$\   $$\ $$$$$$$\  $$\ $$$$$$$\   $$$$$$$ |$$\ $$$$$$$\   $$$$$$\   $$$$$$$\ 
" $$$$$  / $$  __$$\ $$ |  $$ |$$  __$$\ $$ |$$  __$$\ $$  __$$ |$$ |$$  __$$\ $$  __$$\ $$  _____|
" $$  $$<  $$$$$$$$ |$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ |$$ /  $$ |$$ |$$ |  $$ |$$ /  $$ |\$$$$$$\  
" $$ |\$$\ $$   ____|$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ |$$ |  $$ | \____$$\ 
" $$ | \$$\\$$$$$$$\ \$$$$$$$ |$$$$$$$  |$$ |$$ |  $$ |\$$$$$$$ |$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$  |
" \__|  \__|\_______| \____$$ |\_______/ \__|\__|  \__| \_______|\__|\__|  \__| \____$$ |\_______/ 
"                   $$\   $$ |                                                $$\   $$ |          
"                   \$$$$$$  |                                                \$$$$$$  |          
"                    \______/                                                  \______/           



" set <Space> as the leader key
let mapleader=" "

" Open nvim file explorer with leader p v
lua vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

" Toggle relativenumber - number
nmap <C-L><C-L> :set invrelativenumber<CR>

" To apply theme without restarting
nnoremap <leader>sv :source $MYVIMRC<CR>

" Visually select the text that was last edited/pasted (Vimcast#26).
noremap gV `[v`]


" toggle buffer (switch between current and last buffer)
nnoremap <silent> <leader>bb <C-^>

" go to next buffer
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <C-l> :bn<CR>

" go to previous buffer
nnoremap <silent> <leader>bp :bp<CR>
" https://github.com/neovim/neovim/issues/2048
nnoremap <C-h> :bp<CR>

" close buffer
nnoremap <silent> <leader>bd :bd<CR>

" kill buffer
nnoremap <silent> <leader>bk :bd!<CR>

" list buffers
nnoremap <silent> <leader>bl :ls<CR>
" list and select buffer
nnoremap <silent> <leader>bg :ls<CR>:buffer<Space>

" horizontal split with new buffer
nnoremap <silent> <leader>bh :new<CR>

" vertical split with new buffer
nnoremap <silent> <leader>bv :vnew<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      █████ █      ██      ███████         █ ███ █                ██            
"   ██████  █    █████    █       ███     █  ████  █                ██           
"  ██   █  █       █████ █         ██    █  █  ████                 ██           
" █    █  ██       █ ██  ██        █    █  ██   ██                  ██           
"     █  ███      █   █   ███          █  ███          ████         ██           
"    ██   ██      █      ██ ███       ██   ██         █ ███  █  ███ ██     ███   
"    ██   ██      █       ███ ███     ██   ██        █   ████  █████████  █ ███  
"    ██   ██     █          ███ ███   ██   ██       ██    ██  ██   ████  █   ███ 
"    ██   ██     █            ███ ███ ██   ██       ██    ██  ██    ██  ██    ███
"    ██   ██     █              ██ █████   ██       ██    ██  ██    ██  ████████ 
"     ██  ██    █               ██ ██ ██  ██       ██    ██  ██    ██  ███████  
"      ██ █     █                 █ █   ██ █      █ ██    ██  ██    ██  ██       
"       ███     █       ███        █     ███     █   ██████   ██    ██  ████    █
"        ███████       █  █████████       ███████     ████     █████     ███████ 
"          ███        █     █████           ███                 ███       █████  
""""""""""""""""""""""█""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""█"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""██"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VSCode-like move line (kinda)
noremap <A-Up> Vxk<Home>P
noremap <A-Down> Vxj<Home>P

" VSCode-like duplicate line (kinda)
noremap <A-S-Up> Vy<Home>kVP
noremap <A-S-Down> VyPj

