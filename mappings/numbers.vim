" Cycle through relativenumber + number, number (only), and no numbering.
function! mappings#numbers#cycle_numbering() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction

"Cycle transparency
function! mappings#numbers#cycle_transparent() abort
   if g:transparent
        colorscheme janah
        let g:transparent = 0
    else
        highlight Normal guibg=NONE ctermbg=NONE
        let g:transparent = 1
    endif
endfunction
