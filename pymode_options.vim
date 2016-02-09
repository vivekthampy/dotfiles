" ******************* PyMode Settings ********************
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 0

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0


" Turn off plugin's warnings                                 *'g:pymode_warnings'*
let g:pymode_warnings = 1

" Trim unused white spaces on save                   *'g:pymode_trim_whitespaces'*
let g:pymode_trim_whitespaces = 1

" Setup default python options                                *'g:pymode_options'*
let g:pymode_options = 0

" If this option is set to 1, pymode will enable the following options for
" python buffers: >

setlocal complete+=t
setlocal formatoptions-=t
" if v:version > 702 && !&relativenumber
"     setlocal number
" endif
setlocal nowrap
setlocal textwidth=100
setlocal commentstring=#%s
setlocal define=^\s*\\(def\\\\|class\\)

" Setup max line length                       *'g:pymode_options_max_line_length'*
let g:pymode_options_max_line_length = 100

" Enable colorcolumn display at max_line_length   *'g:pymode_options_colorcolumn'*
let g:pymode_options_colorcolumn = 1

" Setup pymode |quickfix| window
                    " *'g:pymode_quickfix_maxheight'* *'g:pymode_quickfix_minheight'*
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6

" Enable pymode indentation                                  *'g:pymode_indent'*
let g:pymode_indent = 1

" Enable pymode folding                                       *'g:pymode_folding'*
let g:pymode_folding = 1

" Enable pymode-motion                                         *'g:pymode_motion'*
let g:pymode_motion = 1

" Turns on the documentation script                               *'g:pymode_doc'*
let g:pymode_doc = 1

" Bind keys to show documentation for current word (selection)
                                                           " *'g:pymode_doc_bind'*
let g:pymode_doc_bind = 'K'


" ------------------------------------------------------------------------------
" 2.8 Breakpoints ~
" Turn on the run code script                                     *'g:pymode_run'*
let g:pymode_run = 1

" Binds keys to run python code                              *'g:pymode_run_bind'*
let g:pymode_run_bind = '<leader>r'

" ------------------------------------------------------------------------------
" 2.8 Breakpoints ~

" Pymode automatically detects available debugger (like pdb, ipdb, pudb) and user
" can set/unset breakpoint with one key and without code checking and etc.

" Enable functionality                                     *'g:pymode_breakpoint'*
let g:pymode_breakpoint = 1

" Bind keys
let g:pymode_breakpoint_bind = '<leader>b'

" Manually set breakpoint command (leave empty for automatic detection)
let g:pymode_breakpoint_cmd = ''


" ==============================================================================


" Pymode supports `pylint`, `pep257`, `pep8`, `pyflakes`, `mccabe` code
" checkers. You could run several similar checkers.

"         Pymode uses Pylama library for code checking. Many options like skip
"         files, errors and etc could be defined in `pylama.ini` file or modelines.
"         Check Pylama documentation for details.

"         Pylint options (ex. disable messages) may be defined in `$HOME/pylint.rc`
"         See pylint documentation.

" Commands:
" *:PymodeLint* -- Check code in current buffer
" *:PymodeLintToggle* -- Toggle code checking
" *:PymodeLintAuto* -- Fix PEP8 errors in current buffer automatically

" Turn on code checking                                          *'g:pymode_lint'*
let g:pymode_lint = 1

" Check code on every save (if file has been modified)  *'g:pymode_lint_on_write'*
let g:pymode_lint_on_write = 1

" Check code on every save (every)                    *'g:pymode_lint_unmodified'*
let g:pymode_lint_unmodified = 0

" Check code when editing (on the fly)                        *'g:pymode_lint_on_fly'*
let g:pymode_lint_on_fly = 0

" Show error message if cursor placed at the error line  *'g:pymode_lint_message'*
let g:pymode_lint_message = 1

" Default code checkers (you could set several)         *'g:pymode_lint_checkers'*
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']

" Values may be chosen from: `pylint`, `pep8`, `mccabe`, `pep257`, `pyflakes`.

" Skip errors and warnings                                *'g:pymode_lint_ignore'*
" E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors that starts with E2) and etc
let g:pymode_lint_ignore = "E501,W"

" Select some error or warnings.                          *'g:pymode_lint_select'*
" By example you disable all warnings starting from 'W', but want to see warning
" 'W0011' and warning 'W430'
let g:pymode_lint_select = "E501,W0011,W430"

" Sort errors by relevance                                  *'g:pymode_lint_sort'*
" If not empty, errors will be sort by defined relevance
" E.g. let g:pymode_lint_sort = ['E', 'C', 'I']  " Errors first 'E',
" after them 'C' and ...
let g:pymode_lint_sort = []

" Auto open cwindow (quickfix) if any errors have been found
                                                       " *'g:pymode_lint_cwindow'*
let g:pymode_lint_cwindow = 1

" Place error |signs|                                             *'g:pymode_signs'*
let g:pymode_lint_signs = 1

" Definitions for |signs|
let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'

" ==============================================================================
" 5. Syntax ~
"                                                                  *pymode-syntax*

" Turn on pymode syntax                                        *'g:pymode_syntax'*
let g:pymode_syntax = 1

" Slower syntax synchronization that is better at handling code blocks in
" docstrings. Consider disabling this on slower hardware.
"                                                    *'g:pymode_syntax_slow_sync'*
let g:pymode_syntax_slow_sync = 0

" Enable all python highlights                          *'g:pymode_syntax_all'*
let g:pymode_syntax_all = 1

" Highlight "print" as a function            *'g:pymode_syntax_print_as_function'*
let g:pymode_syntax_print_as_function = 1

" Highlight '=' operator              *'g:pymode_syntax_highlight_equal_operator'*
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all

" Highlight '*' operator              *'g:pymode_syntax_highlight_stars_operator'*
let g:pymode_syntax_highlight_stars_operator = g:pymode_syntax_all

" Highlight 'self' keyword                      *'g:pymode_syntax_highlight_self'*
let g:pymode_syntax_highlight_self = g:pymode_syntax_all

" Highlight indent's errors                      *'g:pymode_syntax_indent_errors'*
let g:pymode_syntax_indent_errors = g:pymode_syntax_all

" Highlight space's errors                        *'g:pymode_syntax_space_errors'*
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Highlight string formatting                 *'g:pymode_syntax_string_formatting'*
"                                                *'g:pymode_syntax_string_format'*
"                                             *'g:pymode_syntax_string_templates'*
"                                                     *'g:pymode_syntax_doctests'*
let g:pymode_syntax_string_formatting = g:pymode_syntax_all
let g:pymode_syntax_string_format = g:pymode_syntax_all
let g:pymode_syntax_string_templates = g:pymode_syntax_all
let g:pymode_syntax_doctests = g:pymode_syntax_all

" Highlight builtin objects (True, False, ...)    *'g:pymode_syntax_builtin_objs'*
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

" Highlight builtin types (str, list, ...)       *'g:pymode_syntax_builtin_types'*
let g:pymode_syntax_builtin_types = g:pymode_syntax_all

" Highlight exceptions (TypeError, ValueError, ...) 
"                                         *'g:pymode_syntax_highlight_exceptions'*
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

" Highlight docstrings as pythonDocstring (otherwise as pythonString)
"                                                   *'g:pymode_syntax_docstrings'*
let g:pymode_syntax_docstrings = g:pymode_syntax_all



" ------------------------------------------------------------------------------
" 3.1 Set code checkers options ~
"                                                            *pymode-lint-options*

" Pymode has the ability to set code checkers options from pymode variables:

" Set PEP8 options                                  *'g:pymode_lint_options_pep8'*
" >
"     let g:pymode_lint_options_pep8 =
"         \ {'max_line_length': g:pymode_options_max_line_length})

" See https://pep8.readthedocs.org/en/1.4.6/intro.html#configuration for more
" info.

" Set Pyflakes options                          *'g:pymode_lint_options_pyflakes'*
" >
"     let g:pymode_lint_options_pyflakes = { 'builtins': '_' }

" Set mccabe options                              *'g:pymode_lint_options_mccabe'*
" >
"     let g:pymode_lint_options_mccabe = { 'complexity': 12 }

" Set pep257 options                              *'g:pymode_lint_options_pep257'*
" >
"     let g:pymode_lint_options_pep257 = {}

" Set pylint options                              *'g:pymode_lint_options_pylint'*
" >
"     let g:pymode_lint_options_pylint =
"         \ {'max-line-length': g:pymode_options_max_line_length})

" See http://docs.pylint.org/features.html#options for more info.



" ==============================================================================
" 3. Rope support ~
"                                                                    *pymode-rope*

" Pymode supports Rope refactoring operations, code completion and code assists.

" Commands:
" |:PymodeRopeAutoImport| -- Resolve import for element under cursor
" |:PymodeRopeModuleToPackage| -- Convert current module to package
" |:PymodeRopeNewProject| -- Open new Rope project in current working directory
" |:PymodeRopeRedo| -- Redo changes from last refactoring
" |:PymodeRopeRegenerate| -- Regenerate the project cache
" |:PymodeRopeRenameModule| -- Rename current module
" |:PymodeRopeUndo| -- Undo changes from last refactoring


" Turn on the rope script                                        *'g:pymode_rope'*
" >
"     let g:pymode_rope = 1

" .ropeproject Folder ~
"                                                                   *.ropeproject*

" *:PymodeRopeNewProject* [<path>] -- Open new Rope project in the given path
" *:PymodeRopeRegenerate* -- Regenerate the project cache

" Rope uses a folder inside projects for holding project configuration and data.
" Its default name is `.ropeproject`. It is recommended that you do not add the
" .ropeproject folder to version control system.

" Currently it is used for things such as:

" * The config.py file in this folder contains project configuration. Have
"     a look at the default config.py file (which is created when it
"     does not exist) for more information.
" * It can be used for saving project history, so that the next time you open the
"     project you can undo past changes.
" * It can be used to save information about object inferences.
" * It can be used to save a global name cache, which is used for auto-import.

" By default, if `.ropeproject` is not found in the current directory, rope will
" look recursively for it in parent folders.

" Warning: If rope finds `.ropeproject` in a parent dir, it will use it with
" all its child directories, which may slow scanning down (because of many,
" possibly unrelated, files)

" Enable searching for |.ropeproject| in parent directories
"                                                   *'g:pymode_rope_lookup_project'*
" >
"     let g:pymode_rope_lookup_project = 0

" You can also manually set the rope project directory. If not specified rope will
" use the current directory.
"                                                   *'g:pymode_rope_project_root'*
" >
"     let g:pymode_rope_project_root = ""


" The location of the `.ropeproject` folder may also be overridden if you wish to
" keep it outside of your project root. The rope library treats this folder as a
" project resource, so the path will always be relative to your project root (a
" leading '/' will be ignored). You may use `'..'` path segments to place the
" folder outside of your project root.
"                                                  *'g:pymode_rope_ropefolder'*
" >
"     let g:pymode_rope_ropefolder='.ropeproject'



" Show documentation for element under cursor ~

" Show documentation for object under cursor.      *'g:pymode_rope_show_doc_bind'*
" Leave empty to disable the key binding.
" >
"     let g:pymode_rope_show_doc_bind = '<C-c>d'

" Regenerate project cache on every save (if file has been modified)
" >
"     let g:pymode_rope_regenerate_on_write = 1

" ------------------------------------------------------------------------------
" 4.1 Completion ~
"                                                              *pymode-completion*

" By default you can use <Ctrl-Space> for autocompletion. The first entry will
" be automatically selected and you can press <Return> to insert the entry in
" your code. <C-X><C-O> and <C-P>/<C-N> works too.

" Autocompletion is also called by typing a period in |Insert| mode by default.


" Turn on code completion support in the plugin       *'g:pymode_rope_completion'*
" >
"     let g:pymode_rope_completion = 1

" Turn on autocompletion when typing a period
"                                                *'g:pymode_rope_complete_on_dot'*
" >
"     let g:pymode_rope_complete_on_dot = 1

" Keymap for autocomplete                        *'g:pymode_rope_completion_bind'*
" >
"     let g:pymode_rope_completion_bind = '<C-Space>'

" Extended autocompletion (rope could complete objects which have not been
" imported) from project                              *'g:pymode_rope_autoimport'*
" >
"     let g:pymode_rope_autoimport = 0

" Load modules to autoimport by default       *'g:pymode_rope_autoimport_modules'*
" >
"     let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'datetime'])

" Offer to unresolved import object after completion.
" >
"     let g:pymode_rope_autoimport_import_after_complete = 0


" ------------------------------------------------------------------------------
" 4.2 Find definition ~
"                                                             *pymode-rope-findit*

" By default when you press *<C-C>g* on any object in your code you will be moved
" to definition. 
" Leave empty for disable key binding.      *'g:pymode_rope_goto_definition_bind'*
" >
"     let g:pymode_rope_goto_definition_bind = '<C-c>g'

" Command for open window when definition has been found
" Values are (`e`, `new`, `vnew`)                  *'g:pymode_rope_goto_definition_cmd'*
" >
"     let g:pymode_rope_goto_definition_cmd = 'new'

" ------------------------------------------------------------------------------
" 4.3 Refactoring ~
"                                                        *pymode-rope-refactoring*

" Rename method/function/class/variable in the project ~

" Pymode can rename everything: classes, functions, modules, packages, methods,
" variables and keyword arguments.

" Keymap for rename method/function/class/variables under cursor
"                                                    *'g:pymode_rope_rename_bind'*
" >
"     let g:pymode_rope_rename_bind = '<C-c>rr'


" Rename a current module/package ~

" *:PymodeRopeRenameModule* -- Rename current module

" Keymap for rename current module            *'g:pymode_rope_rename_module_bind'*
" >
"     let g:pymode_rope_rename_module_bind = '<C-c>r1r'


" Imports ~

" *:PymodeRopeAutoImport* -- Resolve import for element under cursor

" Organize imports sorts imports, too. It does that according to PEP8. Unused
" imports will be dropped.
" Keymap                                   *'g:pymode_rope_organize_imports_bind'*
" >
"     let g:pymode_rope_organize_imports_bind = '<C-c>ro'

" Insert import for current word under cursor    *'g:pymode_rope_autoimport_bind'*
" Should be enabled |'g:pymode_rope_autoimport'|
" >
"     let g:pymode_rope_autoimport_bind = '<C-c>ra'


" Convert module to package ~
"                                         *'g:pymode_rope_module_to_package_bind'*

" *:PymodeRopeModuleToPackage* -- convert current module to package

" Keybinding:
" >
"     let g:pymode_rope_module_to_package_bind = '<C-c>r1p'


" Extract method/variable ~
"                                                            *pymode-rope-extract*

" Extract method/variable from selected lines.

"                                            *'g:pymode_rope_extract_method_bind'*
"                                          *'g:pymode_rope_extract_variable_bind'*
" >
"     let g:pymode_rope_extract_method_bind = '<C-c>rm'
"     let g:pymode_rope_extract_variable_bind = '<C-c>rl'


" Use function ~
"                                                                *pymode-rope-use*

" It tries to find the places in which a function can be used and changes the
" code to call it instead.
" >
"     let g:pymode_rope_use_function_bind = '<C-c>ru'


" Move method/fields ~
"                                                               *pymode-rope-move*

" It happens when you perform move refactoring on a method of a class. In this
" refactoring, a method of a class is moved to the class of one of its
" attributes. The old method will call the new method. If you want to change all
" of the occurrences of the old method to use the new method you can inline it
" afterwards.
" >
"     let g:pymode_rope_move_bind = '<C-c>rv'

" Change function signature ~
" >
"     let g:pymode_rope_change_signature_bind = '<C-c>rs'


" ------------------------------------------------------------------------------
" 4.4 Undo/Redo changes ~
"                                                               *pymode-rope-undo* 
"                                                               *pymode-rope-redo*

" Commands:

" *:PymodeRopeUndo* -- Undo last changes in the project
" *:PymodeRopeRedo* -- Redo last changes in the project
