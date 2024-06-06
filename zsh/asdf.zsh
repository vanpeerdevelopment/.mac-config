source $HOME/.asdf/asdf.sh

export ASDF_CONFIG_FILE="$(dirname $0)/config/.asdfrc"

# java plugin
asdf plugin add java https://github.com/halcyon/asdf-java.git 2>/dev/null
source ~/.asdf/plugins/java/set-java-home.zsh
asdf global java temurin-21.0.3+9.0.LTS

# node plugin
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git 2>/dev/null
asdf global nodejs 20.14.0

# python plugin
asdf plugin add python 2>/dev/null
asdf global python 3.12.3

# gradle plugin
asdf plugin-add gradle https://github.com/rfrancis/asdf-gradle.git
asdf global gradle 8.8

# pnpm plugin
asdf plugin add pnpm
asdf global pnpm 9.2.0

# initialise completions
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit
