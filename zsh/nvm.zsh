if [ "$(uname -s)" = "Darwin" ]
then
  lazynvm() {
    unset -f nvm node npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
  }

  nvm() {
    lazynvm
    nvm $@
  }

  node() {
    lazynvm
    node $@
  }

  npm() {
    lazynvm
    npm $@
  }
fi
