export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export ASDF_CONFIG_FILE="$(dirname $0)/config/.asdfrc"

fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
autoload -Uz compinit && compinit


# java plugin
asdf plugin add java https://github.com/halcyon/asdf-java.git >/dev/null 2>&1
source ~/.asdf/plugins/java/set-java-home.zsh >/dev/null 2>&1
asdf install java temurin-21.0.6+7.0.LTS >/dev/null 2>&1
asdf set --home java temurin-21.0.6+7.0.LTS >/dev/null 2>&1

# node plugin
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git >/dev/null 2>&1
asdf install nodejs 22.14.0 >/dev/null 2>&1
asdf set --home nodejs 22.14.0 >/dev/null 2>&1

# pnpm plugin
asdf plugin add pnpm >/dev/null 2>&1
asdf install pnpm 10.5.2 >/dev/null 2>&1
asdf set --home pnpm 10.5.2 >/dev/null 2>&1

# gradle plugin
asdf plugin add gradle https://github.com/rfrancis/asdf-gradle.git >/dev/null 2>&1
asdf install gradle 8.9 >/dev/null 2>&1
asdf set --home gradle 8.9 >/dev/null 2>&1

# python plugin
asdf plugin add python >/dev/null 2>&1
asdf install python 3.13.2 >/dev/null 2>&1
asdf set --home python 3.13.2 >/dev/null 2>&1

# awscli plugin
asdf plugin add awscli >/dev/null 2>&1
asdf install awscli 2.24.19 >/dev/null 2>&1
asdf set --home awscli 2.24.19 >/dev/null 2>&1

# terraform plugin
asdf plugin add terraform >/dev/null 2>&1

# sops plugin
asdf plugin add sops >/dev/null 2>&1

# age plugin
asdf plugin add age >/dev/null 2>&1

