# .mac-config
Overview of the tools installed on my mac, several terminal profiles and useful aliases

## Prerequisites
- [Homebrew](https://brew.sh/)
- [iTerm2](https://www.iterm2.com/)
- [zsh](http://www.zsh.org/)
- [oh-my-zsh](https://ohmyz.sh/)


## Installation
- `git clone --recursive git@github.com:vanpeerdevelopment/.mac-config.git <MAC_CONFIG>` 


## Configuration
#### HomeBrew
- Install all HomeBrew binaries and apps by running `brew bundle` in `<MAC_CONFIG>/brew`
- [Brewfile](https://github.com/Homebrew/homebrew-bundle)
- [Homebrew Cask](https://github.com/Homebrew/homebrew-cask)
- [Manage homebrew services](https://github.com/Homebrew/homebrew-services)
- [Mac App Store CLI](https://github.com/mas-cli/mas)

#### iTerm2
###### General
- Quit when all windows are closed: true
- Check for updates automatically: false

###### Appearance
- Theme: Dark (high contrast)
- Show tab bar even when there is only one tab: true
- Show tab numbers: false
- Show tab bar in fullscreen: true
- Show profile name: true
 
###### Profiles
For each profile adapt user configuration in `profile.sh` and:
- General
    - Name: profile name
    - Shortcut key
    - Send text at start: `source <MAC_CONFIG>/profiles/<NAME>/profile.sh`
    - Directory: `~/Projects/<profile>`
- Colors: solarized dark
- Text: 
    - [Font](https://github.com/ryanoasis/nerd-fonts): 14pt Hack Regular Nerd Font Complete
    - Use [font](https://github.com/ryanoasis/nerd-fonts) for non-ASCII text: 14pt Hack Regular Nerd Font Complete  
- Window
    - Preserve profile name in tab title 
- Keys
    - Load preset: natural text editing to enable word jump, deletion, ...
    
    
#### oh-my-zsh
###### Environment variables (.zshrc)
- `export NVM_AUTO_USE=true`: enable auto use nvm version in .nvmrc files

###### [Customizations](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization)
- `ZSH_CUSTOM=<MAC_CONFIG>/zsh`: custom oh-my-zsh's directory, whatever you place inside of it will take precedence over the built-in configuration
- `<MAC_CONFIG>/zsh/*.zsh`: add functionality without adapting `~/.zshrc`, files will be automatically loaded by the init script, in alphabetical order
- `<MAC_CONFIG>/zsh/plugins`: [custom plugins](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization#overriding-and-adding-plugins) can be added as a [git submodule](https://blog.github.com/2016-02-01-working-with-submodules/) here
- `<MAC_CONFIG>/zsh/themes`: [custom themes](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization#overriding-and-adding-themes) can be added as a [git submodule](https://blog.github.com/2016-02-01-working-with-submodules/) here
- `<MAC_CONFIG>/zsh/lib`: [override internals](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization#overriding-internals): individual functions or even entire files

###### Theme
- `POWERLEVEL9K_MODE='nerdfont-complete'`
- `ZSH_THEME="powerlevel9k/powerlevel9k"`
- [powerlevel9k theme](https://github.com/bhilburn/powerlevel9k)

###### Plugins
- `plugins=(zsh-completions, zsh-syntax-highlighting zsh-autosuggestions)`
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)