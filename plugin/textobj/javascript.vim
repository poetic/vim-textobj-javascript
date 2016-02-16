" textobj-datetime - Text objects for javascript
" Version: 0.0.1
" Copyright (C) Chun Yang <yang2007chun@gmail.com>
" License: So-called MIT/X license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}

if exists('g:loaded_textobj_javascript')
  finish
endif

let g:loaded_textobj_javascript = 1

" chunk
" ac, ic
call textobj#user#plugin('chunkblock', {
\   '-': {
\     'select-a-function': 'ChunkBlock',
\     'select-a': 'ac',
\     'select-i-function': 'ChunkBlock',
\     'select-i': 'ic',
\   },
\ })

" todo: include other charaters that we can use for %
function! ChunkBlock()
  normal! $va{g$
  let tail_pos = getpos('.')
  normal! F}%g0
  let head_pos = getpos('.')
  return ['v', head_pos, tail_pos]
endfunction
