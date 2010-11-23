#Copy everything from checked out ruby-debugger's vim directory to .vim/bundle/debugger.
#Ideally we'd make a symlink but can't do that with git submodules
task :default do
  system "rm -rf .vim/bundle/debugger"
  system "cp -r .vim/bundle/ruby-debugger/vim .vim/bundle/debugger"
end
