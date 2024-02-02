# config files by @juliocastrodev 🚀

## Installation of Tools 🔍

### Everywhere
- [zsh] - Shell
- [iterm2] - Terminal (MacOS)

## Instructions
- [.p10k.zsh] - Config for [p10k], a theme for [zsh]

  - It should be saved inside `~` because [.zshrc] will load it from there.

- [.zshrc] - Config for [zsh]

  - It should be saved inside `~` because [zsh] will load it from there.

- [com.local.julioMacKeysRemapping.plist] - Keybindings for MacOS (US keyboard layout)
  
  - It should be saved inside `/Library/LaunchDaemons`
  - Then we have to run: (only necessary **once**, then it's persisted).
    ```sh
    sudo launchctl load /Library/LaunchDaemons/com.local.julioMacKeysRemapping.plist
    ```
    There is a [generator][macKeysRemappingGenerator] site that allow us to easily create new files like this one.

- [iterm2-profile.json] - Iterm2 Settings

  - To load it we have to go to `Settings > Profiles > Other Actions > Import JSON Profiles` and then select the file.
  
    This affects mainly: font-size and terminal's window default dimensions.


<!-- References -->
[zsh]: https://www.zsh.org/
[zplug]: https://github.com/zplug/zplug
[iterm2]: https://github.com/gnachman/iTerm2
[p10k]: https://github.com/romkatv/powerlevel10k
[macKeysRemappingGenerator]: https://github.com/amarsyla/hidutil-key-remapping-generator

[.p10k.zsh]: .p10k.zsh
[.zshrc]: .zshrc
[iterm2-profile.json]: iterm2-profile.json
[com.local.julioMacKeysRemapping.plist]: com.local.julioMacKeysRemapping.plist