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

- [com.local.julioMacKeysRemapping.plist] - Keybindings for MacOS (US keyboard layout), done with an OS [LaunchDaemon][launchDaemon].
  - It should be saved inside `/Library/LaunchDaemons`.
  - Then we have to give it specific root permissions and ownership. For that execute:
    ```sh
    sudo chown root:wheel /Library/LaunchDaemons/com.local.julioMacKeysRemapping.plist
    sudo chmod 644 /Library/LaunchDaemons/com.local.julioMacKeysRemapping.plist
    ```
  - Finally we can start the daemon, which performs the keybindings (only necessary **once**, then it's persisted).
    ```sh
    sudo launchctl bootstrap system /Library/LaunchDaemons/com.local.julioMacKeysRemapping.plist
    ```
    It's possible that, depending on the OS version, it's necessary to add `hidutil` to: Settings -> Privacy & Security -> Input Monitoring.

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
[launchDaemon]: https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html

[.p10k.zsh]: .p10k.zsh
[.zshrc]: .zshrc
[iterm2-profile.json]: iterm2-profile.json
[com.local.julioMacKeysRemapping.plist]: com.local.julioMacKeysRemapping.plist
