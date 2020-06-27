set number
highlight LineNr ctermfg=blue
syntax on
set wrap
set autoindent
set expandtab
set softtabstop=4
set wildmenu
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set laststatus=2
set showmode!
inoremap hh <esc>

function! FileSize() abort
    let l:bytes = getfsize(expand('%p'))
    if (l:bytes >= 1024)
        let l:kbytes = l:bytes / 1025
    endif
    if (exists('kbytes') && l:kbytes >= 1000)
        let l:mbytes = l:kbytes / 1000
    endif
 
    if l:bytes <= 0
        return '0'
    endif
  
    if (exists('mbytes'))
        return l:mbytes . 'MB '
    elseif (exists('kbytes'))
        return l:kbytes . 'KB '
    else
        return l:bytes . 'B '
    endif
endfunction

hi User1 ctermfg=black ctermbg=red
hi User2 ctermfg=black ctermbg=blue
hi User3 ctermfg=black ctermbg=yellow
hi User4 ctermfg=none ctermbg=black
hi User5 ctermfg=black ctermbg=cyan
hi User6 ctermfg=magenta ctermbg=black

let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ '' : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}

set statusline=
set statusline+=%2*\ %2*%{toupper(g:currentmode[mode()])}
set statusline+=%3*\ %f
set statusline+=\ %1*\ %Y
set statusline+=\ %6*\ %{&modified?'[+]':''}
set statusline+=%=%4*\ %v:%l\/%L
set statusline+=\ %5*\ %-3(%{FileSize()}%) 
