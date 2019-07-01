" run pathogen.vim
execute pathogen#infect()

filetype plugin indent on  "activates filetype detection
syntax on
set syntax=perl         "forced syntax
set nu                  "display column number
set tabstop=4           "set tab length
set expandtab
set shiftwidth=4
set guioptions=em
set showtabline=2
set softtabstop=4       "tab key length
set autoindent
set smartindent
set cindent

set t_Co=256
set encoding=utf-8

"set textwidth=79
set wrapmargin=1

"set spell               "spell checking

"support for git
function CurrentGitStatus()
    let gitoutput = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    if len(gitoutput) > 0
        let b:gitstatus = gitoutput
    else
        let b:gitstatus = ''
    endif
endfunc
autocmd BufEnter,BufWritePost * call CurrentGitStatus()

"format of the status bar
set laststatus=2        "position of the status bar
set statusline=
set statusline=%(<%{b:gitstatus}>%)
set statusline+=\ %f%m
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c

set hlsearch            "highlight all search entries
set ignorecase          "no case sensitivity
set smartcase           "sensitive to upper case letter in the search

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
   \| exe "normal! g'\"" | endif
endif

"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview

" Map ctrl-movement keys to window switching
map <C-k> <C-w><up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Switch to alternate file
map <C-n> :bnext<cr>
map <C-p> :bprevious<cr>

set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey
highlight Pmenu ctermfg=black
hi Search ctermbg=darkYellow

" vimdiff color scheme
highlight DiffAdd    ctermfg=0 ctermbg=2 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=italic ctermfg=9 ctermbg=15 gui=none guifg=bg guibg=Red
highlight DiffChange ctermfg=0 ctermbg=99 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=11 ctermbg=8 gui=none guifg=bg guibg=Red

" short key for Tabularize to align text
let mapleader=","
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>e :SyntasticToggleMode<CR>: SyntasticCheck<CR>
let g:syntastic_loc_list_height=5
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace:
match ExtraWhitespace /\s\+$/
" Show trailing whitespace and spaces before a tab:
match ExtraWhitespace /\s\+$\| \+\ze\t/
" Show tabs that are not at the start of a line:
match ExtraWhitespace /[^\t]\zs\t\+/

set list
set listchars=tab:>-
