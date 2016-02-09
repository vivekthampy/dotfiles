" The magical turn-Vim-into-a-Python-IDE vim resource file!
"
" Mostly taken from http://www.sontek.net/category/Vim.aspx
" Other bits culled from various sources, Canonical guys, or made up by me.
"
" Julian Edwards 2008-05-30

set modeline

" Wrapping and tabs.
" set tw=78 ts=4 sw=4 sta et sts=4 ai
setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

" More syntax highlighting.
let python_highlight_all = 1

" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Auto completion via ctrl-space (instead of the nasty ctrl-x ctrl-o)
set omnifunc=pythoncomplete#Complete
inoremap <C-Space> <C-x><C-o>

" Get this plugin from http://www.vim.org/scripts/script.php?script_id=1112
" Pressing "K" takes you to the documentation for the word under the cursor.
" autocmd filetype python source ~/.vim/pydoc.vim

" Wrap at 72 chars for comments.
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

" Use F7/Shift-F7 to add/remove a breakpoint (ipdb.set_trace)
" Totally cool.
python << EOF
import vim as gvim
def SetBreakpoint():
    import re
    nLine = int( gvim.eval( 'line(".")'))

    strLine = gvim.current.line
    strWhite = re.search( '^(\s*)', strLine).group(1)

    gvim.current.buffer.append(
       "%(space)sipdb.set_trace() %(mark)s Breakpoint %(mark)s" %
         {'space':strWhite, 'mark': '#' * 30}, nLine - 1)

    for strLine in gvim.current.buffer:
        if strLine == "import ipdb":
            break
    else:
        gvim.current.buffer.append( 'import ipdb', 0)
        gvim.command( 'normal j1')

gvim.command( 'map <f7> :py SetBreakpoint()<cr>')

def RemoveBreakpoints():
    import re

    nCurrentLine = int( gvim.eval( 'line(".")'))

    nLines = []
    nLine = 1
    for strLine in gvim.current.buffer:
        if strLine == "import ipdb" or strLine.lstrip()[:16] == "ipdb.set_trace()":
            nLines.append( nLine)
        nLine += 1

    nLines.reverse()

    for nLine in nLines:
        gvim.command( "normal %dG" % nLine)
        gvim.command( "normal dd")
        if nLine < nCurrentLine:
            nCurrentLine -= 1

    gvim.command( "normal %dG" % nCurrentLine)

gvim.command( "map <s-f7> :py RemoveBreakpoints()<cr>")
EOF
"vim:syntax=vim
