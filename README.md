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
- Colors: solarized dark (TODO)
- Text: 14pt Source Code Pro for Powerline (TODO)
- Window
    - Preserve profile name in tab title 
- Keys
    - Load preset: natural text editing to enable word jump, deletion, ...
    
    
#### oh-my-zsh
- `ZSH_CUSTOM=<MAC_CONFIG>/zsh`: use custom zsh folder
- `ZSH_THEME="powerlevel9k/powerlevel9k"`: configure [powerlevel9k theme](https://github.com/bhilburn/powerlevel9k)
- `plugins=(zsh-autosuggestions)`: use plugins