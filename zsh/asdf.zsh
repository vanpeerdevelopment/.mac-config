source $HOME/.asdf/asdf.sh

export ASDF_CONFIG_FILE="$(dirname $0)/config/.asdfrc"

# java plugin
asdf plugin add java https://github.com/halcyon/asdf-java.git >/dev/null
source ~/.asdf/plugins/java/set-java-home.zsh
asdf install java temurin-21.0.4+7.0.LTS >/dev/null
asdf global java temurin-21.0.4+7.0.LTS

# node plugin
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git >/dev/null
asdf install nodejs 20.16.0 >/dev/null
asdf global nodejs 20.16.0

# python plugin
asdf plugin add python >/dev/null
asdf install python 3.12.5 >/dev/null
asdf global python 3.12.5

# gradle plugin
asdf plugin-add gradle https://github.com/rfrancis/asdf-gradle.git >/dev/null
asdf install gradle 8.8 >/dev/null
asdf global gradle 8.8

# pnpm plugin
asdf plugin add pnpm >/dev/null
asdf install pnpm 9.7.0 >/dev/null
asdf global pnpm 9.7.0

# initialise completions
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit