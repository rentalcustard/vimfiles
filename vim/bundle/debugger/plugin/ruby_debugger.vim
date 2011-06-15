if exists("g:ruby_debugger_loaded")
  finish
endif

command! -nargs=* -complete=file Rdebugger call ruby_debugger#load_debugger() | call g:RubyDebugger.start(<q-args>)
command! -nargs=0 RdbStop call g:RubyDebugger.stop() 
command! -nargs=1 RdbCommand call g:RubyDebugger.send_command_wrapper(<q-args>) 
command! -nargs=0 RdbTest call g:RubyDebugger.run_test() 
command! -nargs=1 RdbEval call g:RubyDebugger.eval(<q-args>)
command! -nargs=1 RdbCond call g:RubyDebugger.conditional_breakpoint(<q-args>)
command! -nargs=1 RdbCatch call g:RubyDebugger.catch_exception(<q-args>)
command! -nargs=0 RdbLog call ruby_debugger#load_debugger() | call g:RubyDebugger.show_log()

let g:ruby_debugger_loaded = 1


