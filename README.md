# config files by @juliocastrodev

## Install

### Everywhere
- [zsh] - Shell

- [zplug] - Plugin manager for [zsh]

  The installation consists of cloning its repository. It's important to do so in `~` with the name `.zplug` because [.zshrc] will use a script from `~/.zplug/`

### MacOS
- [karabiner] - Keyboard Customization Tool

## Instructions
- [.p10k.zsh] - Config for [p10k], a theme for [zsh]

  - It should be saved inside `~` because [.zshrc] will load it from there.

- [.zshrc] - Config for [zsh]

  - It should be saved inside `~` because [zsh] will load it from there.
  
  - The **first** time we start [zsh] we need to run this command to install and load the plugins:

    ```sh
    zplug install && zplug load
    ```

- [karabiner.json] - Keybindings
  
  - It should be saved inside `~/.config/karabiner/`
  - It is possible to persist this settings in the MacOS config. This allows to even uninstall [karabiner] afterwards. To do so we have to open the [karabiner] app and go to `Preferences > Misc > System default configuration` and click in the corresponding option.

- [iterm2-profile.json] - Iterm2 Settings

  - To load it we have to go to `Preferences > Profiles > Other Actions > Import JSON Profiles` and then select the file.


<!-- References -->
[zsh]: https://www.zsh.org/
[zplug]: https://github.com/zplug/zplug
[karabiner]: https://github.com/pqrs-org/Karabiner-Elements

[p10k]: https://github.com/romkatv/powerlevel10k
[.zshrc]: .zshrc
[.p10k.zsh]: .p10k.zsh
[iterm2-profile.json]: iterm2-profile.json
[karabiner.json]: karabiner.json