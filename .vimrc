
"--------inicio de 
call plug#begin('~/.vim/plugged') 

Plug 'joshdick/onedark.vim' "tema para vim
Plug 'vim-airline/vim-airline' "tema para barra de estado en el bottom
Plug 'vim-airline/vim-airline-themes' "tema para barra de estado en el bottom
Plug 'preservim/nerdtree' "arbol al lado izquierdo para navegar entre archivos del directorio
Plug 'christoomey/vim-tmux-navigator' "navegacion entre vim panes para navegar entre ventanas en vim | cntrl + l , cntrl + n  |
Plug 'jiangmiao/auto-pairs' "poner doble comillas, doble parentesis, doble corchetes, etc
Plug 'tpope/vim-commentary' "para hacer comentarios automaticos con comando
Plug 'neoclide/coc.nvim', {'branch': 'release'} "inteligence para el autocompletado
Plug 'ryanoasis/vim-devicons' "para los iconos de los archivos
Plug 'pangloss/vim-javascript' "para javascript
"Plug 'SirVer/ultisnips' "para snipets ya hechos
Plug 'dense-analysis/ale' "para el marcado de errores
"para el buscador de archivos son tres plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' "para el buscador de archivos con :fzf
Plug 'airblade/vim-rooter'
" Plug 'liuchengxu/vim-which-key' "para que al presionar espacio me salga un menu de opciones

"para los snipets
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate' "principal pero ya esta obsoleto
"opcional para snippets ya creados
Plug 'honza/vim-snippets'
"para saltar entre palabras presionando s y buscando la palabra o caracter a
"saltar
Plug 'justinmk/vim-sneak'
"para resaltar las palabra al usar la tecla f{char} para la linea actual find
Plug 'unblevable/quick-scope'
"para tener git integrado en nvim
"https://www.chrisatmachine.com/Neovim/12-git-integration/
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
"colorsckemes para cambiar de color de temas con :colorscheme <TAB>
Plug 'rafi/awesome-vim-colorschemes'
"para previsualizacion de colores muy util para css
Plug 'ObserverOfTime/coloresque.vim'

"plugins para jsx para react
" Plug 'maxmellon/vim-jsx-pretty'
" resaltado de react y js
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
"jsx para snippets
Plug 'mattn/emmet-vim'


call plug#end() 
"-------final de instalaciones plugins



"-----------------------------
"Configuracion nativa de vim
"----------------------------
set number
set cursorline
set mouse=a
set clipboard=unnamed
set laststatus=2
set showcmd
set noshowmode
set showmatch
set encoding=utf-8
"para que donde estemos posicionados cuenta como linea 1 para abajo y arriba
set rnu
syntax enable

" modificacion de fondo , si quieres un fondo tranparente basta con poner el
" ctermbg=NONE
"autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi Normal guibg=252 ctermbg=233
"------------------



"-----------------------------
"-----------------------------
"Comandos personalizados mapeos
"-----------------------------
"-----------------------------

"vmap: modo visual, nmap: modo normal, nnoremap: que nuestro comando solo se
"use para una sola cosa

"para en el modo inserccion escribir jj para simular presionar el esc y salir
"de ese modo
imap jk <Esc>

"poner como tecla linea la barra espaciadora
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

"C-s para indicar ctrl + s + a , despues los comandos a ejecutar y despues <CR>
"para indicar que de un enter al final 
" nnoremap <C-s-a> :w<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :bd<CR>
nmap <C-m> :wq<CR>
" para que al presionar Ctrl + p || ctrl + o  nos movamos entre los archivos que tenemos en los buffers y poder navegar entre ellos
nnoremap <C-o> :bprev<CR>
nnoremap <C-p> :bnext<CR>
" para al presionar el signo de menos haga el dd para borrar la linea 
nmap - dd
" para el prettier automatico tipo para indentaciones y eso a todos los
" archivos que terminen en .html
autocmd BufWrite *.html :CocCommand prettier.formatFile
"para activar el pluggin de buscador de archivos
nnoremap <C-u> :FZF<CR>
"para poder navegar entre los buffers
" nnoremap <C-y> :buffer<space>
nnoremap <leader>r :buffer<space>
nnoremap <C-x> :q<CR>







"-------
" PLUGINS :
" -------

"----------------------------
"configuracion tema jellybeans
"----------------------------
syntax on
colorscheme onedark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


"-----------------------------
"configuracion de arline plugin
"-----------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'



"----------------------------
"vim-snippets configuracion
"----------------------------
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'




"-----------------------------
"Configuracion de NERDTree  ( se puede escribir :NERD y despues Tab para ver
"todas las opciones que ofere )
"-----------------------------

"ctrl + n para abrir el TreeToggle
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


"---------------------
"vim-commentary atajos:
"---------------------
   " * gcc (en modo normal) para comentar esa linea y descomentar
   " * v (para entrar a modo visual y seleccionar texto) despues gcc para
   " comentar todas esas lineas
   "


"--------------------
""vim-devicons config
"--------------------
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsOS = 'Darwin'


"--------------------
"vim-javascript config
"--------------------
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
	au!
	au FileType javascript setlocal foldmethod=syntax
augroup END


"----------------------
"vim-which-key
""---------------------
"nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"set timeoutlen=500
"let g:mapleader = "\<Space>   //cerrar con comilla doble aqui
"let g:maplocalleader = ','
"nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
"nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>


"----------------------
"Airline configuracion
"----------------------
"sudo apt-get install fonts-powerline
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


"---------------------------
"Configuaracion sneak
"---------------------------

"s{char}{char}
"S{char}{char}

"f{char}
"F{char}


"t{char}
"T{char}

let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow
" Cool prompts
let g:sneak#prompt = '🕵'
let g:sneak#prompt = '🔎'



"Configuracion quickscope
"-------------------------------------
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150


"Git integrado configuracion:
"https://www.chrisatmachine.com/Neovim/12-git-integration/
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


"---------------------------------------------------------------------------------------------
"fzf configuration
"---------------------------------------------------------------------------------------------

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


"-------------------------------------------------------------------------------------------------------------------------
"Coc config 
"--------------------------------------------------------------------------------------------------------------------------
"
"https://github.com/neoclide/coc.nvim   <===  AQUI ESTA DE DONDE COPIE EL
"CODIGO EN EL APARTADO EXAMPLE VIM CONFIGURATION Y VIENE QUE HACE CADA COSA
"QUE PEGUE AQUI

set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
if has("patch-8.1.1564")
	set signcolumn=number
else
	  set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
	  inoremap <silent><expr> <c-space> coc#refresh()
  else
	
	  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
		endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


augroup mygroup
	autocmd!
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

if has('nvim-0.4.0') || has('patch-8.2.0750')
	nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
	inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
	vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>





