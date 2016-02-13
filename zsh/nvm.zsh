if [ "$(uname -s)" == "Darwin" ]
then
  export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh
fi
