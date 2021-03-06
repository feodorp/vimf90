" File: fortran_state.vim
" Author: Rudra Banerjee (bnrj DOT rudra at gmail.com) 
" Version: 0.2
" Copyright: Copyright (C) 2015 Rudra Banerjee
" 
"    This program is free software: you can redistribute it and/or modify
"    it under the terms of the GNU General Public License as published by
"    the Free Software Foundation, either version 3 of the License, or
"    (at your option) any later version.
"
"    This program is distributed in the hope that it will be useful,
"    but WITHOUT ANY WARRANTY; without even the implied warranty of
"    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
"    GNU General Public License for more details.
"
" Description:  completes some most used statements and declarations 
" of fortran90+ Formatting
"
" For the laziest people, add a space around operators {{{1
inoremap <expr> = stridx('</=>',getline(".")[col(".")-3]) >= 0 ? "<bs>= " : getline(".")[col(".")-2] =~ '\s' ? "= " : "="
inoremap <expr> > stridx('</=>',getline(".")[col(".")-3]) >= 0 ? "<bs>> " : getline(".")[col(".")-2] =~ '\s' ? "> " : ">"
inoremap <expr> + getline(".")[col(".")-2] =~ '\s' ? "+ " : "+" 
inoremap <expr> - getline(".")[col(".")-2] =~ '\s' ? "- " : "-"
inoremap <expr> * getline(".")[col(".")-2] =~ '\s' ? "* " : "*"
inoremap <expr> / getline(".")[col(".")-2] =~ '\s' ? "/ " : "/"
"inoremap <expr> / getline(".")[col(".")-2] =~ '[[:blank:])]' ? "/ " : "/"

" Declarations: {{{1
call IMAP ('\prt', 'print*,<++>',                 "fortran")
call IMAP ('\wr',  'write(<++>,*)<++>',           "fortran")
call IMAP ('\rd',  'read(<++>,*)<++>',            "fortran")
call IMAP ('\re',  'real(kind=<++>)::<++>',       "fortran")
call IMAP ('\int', 'integer(kind=<++>)::<++>',    "fortran")
call IMAP ('\cplx','complex(kind=<++>)::<++>',    "fortran")
call IMAP ('\ch',  'character(len=<++>)::<++>',   "fortran")
call IMAP ('\tp',  'type(<++>)::<++>',        "fortran")
call IMAP ('\dim', 'dimension(<++>)',             "fortran")
call IMAP ('\par', 'parameter',                   "fortran")
call IMAP ('\sre', 'selected_real_kind(<++>)',    "fortran")
call IMAP ('\sie', 'selected_integer_kind(<++>)', "fortran")

"INTRINSIC PROCEDURES:  {{{1
:call IMAP ('\fab',     'abort',                  "fortran")
:call IMAP ('\fabs',    'abs(<++>)',              "fortran")
:call IMAP ('\facc',    'access(<++>,<++>)',      "fortran")
:call IMAP ('\fach',    'achar(<++>)',            "fortran")
:call IMAP ('\facos',   'acos(<++>)',             "fortran")
:call IMAP ('\facosh',  'acosh(<++>)',            "fortran")
:call IMAP ('\fadl',    'adjustl(<++>)',          "fortran")
:call IMAP ('\fadr',    'adjustr(<++>)',          "fortran")
:call IMAP ('\faim',    'aimag(<++>)',            "fortran")
:call IMAP ('\faint',   'aint(<++>)',             "fortran")
