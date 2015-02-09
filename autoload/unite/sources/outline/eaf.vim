"=============================================================================
" File: autoload/unite/sources/outline/eaf.vim
" Author: twatan
" Version: 0.1.0
"
" Licensed under the MIT license:
" http://www.opensource.org/licenses/mit-license.php
"=============================================================================

function! unite#sources#outline#eaf#outline_info()
  return s:outline_info
endfunction

"-----------------------------------------------------------------------------
" Outline Info

let s:outline_info = {
      \ 'heading': '^.*TIER_ID=\"\(.*\)\">',
      \}

function! s:outline_info.create_heading(which, heading_line, matched_line, context)
  let heading = {
        \ 'word' : a:heading_line,
        \ 'level': 1,
        \ 'type' : 'generic',
        \ }

    let word = substitute(a:heading_line, '^.*TIER_ID=\"\(.*\)\">', 'Tier: \1', 'g')
  let heading.word = word
  return heading
endfunction
