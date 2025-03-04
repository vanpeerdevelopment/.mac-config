export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export ASDF_CONFIG_FILE="$(dirname $0)/config/.asdfrc"

fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
autoload -Uz compinit && compinit


# java plugin
asdf plugin add java https://github.com/halcyon/asdf-java.git >/dev/null
source ~/.asdf/plugins/java/set-java-home.zsh >/dev/null
asdf install java temurin-21.0.6+7.0.LTS >/dev/null
asdf global java temurin-21.0.6+7.0.LTS >/dev/null

# node plugin
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git >/dev/null
asdf install nodejs 20.18.3 >/dev/null
asdf global nodejs 20.18.3 >/dev/null

# pnpm plugin
asdf plugin add pnpm >/dev/null
asdf install pnpm 10.5.2 >/dev/null
asdf global pnpm 10.5.2 >/dev/null

# gradle plugin
asdf plugin add gradle https://github.com/rfrancis/asdf-gradle.git >/dev/null
asdf install gradle 8.9 >/dev/null
asdf global gradle 8.9 >/dev/null

# python plugin
asdf plugin add python >/dev/null
asdf install python 3.13.2 >/dev/null
asdf global python 3.13.2 >/dev/null