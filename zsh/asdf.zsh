source $HOME/.asdf/asdf.sh

export ASDF_CONFIG_FILE="$(dirname $0)/config/.asdfrc"

# java plugin
asdf plugin add java https://github.com/halcyon/asdf-java.git 2>/dev/null
source ~/.asdf/plugins/java/set-java-home.zsh
asdf global java temurin-17.0.6+10

# node plugin
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git 2>/dev/null
asdf global nodejs 18.15.0

# python plugin
asdf plugin add python 2>/dev/null
asdf global python 3.11.2

# initialise completions
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit
