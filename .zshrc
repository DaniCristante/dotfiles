export LSCOLORS=gxfxcxdxbxegedabagacad
[ -s "${HOME}/.zprezto/init.zsh" ] && \. "${HOME}/.zprezto/init.zsh";
[ -s "${HOME}/.bash_aliases" ] && \. "${HOME}/.bash_aliases";

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
