# mango-dwm-config
This is meant to provide a sensible mango default for DWM users. There is more you can do to further make it emulate DWM, consider this your quickstart to doing so. 

## Packages required
* https://github.com/DreamMaoMao/mangowc will list the dependencies and how to install
* waybar
* wmenu
* kitty, although if you just swap the first bind in config.conf you can use whatever.


This repository contains 3 important files:  
[mango configuration(config.conf)](.config/mango/config.conf) -> `~/.config/mango`  
[waybar config](.config/waybar/config.jsonc) and [waybar styling](.config/waybar/style.css) -> `~/.config/waybar`

# Nix
If you are on NixOS you likely won't be placing these files here yourself. You can use the Mango home manager module and source the settings and autostart_sh attributes to those files. You can do a similar thing with config.jsonc as well. 

## Another note for Nixers, or potentially anyone willing to use the nix packager

I have included a dev environment through a flake in this repo. This is only meant to demo the config raw while in another wayland session. It's devshell currently does a few things. 
* It will change your home directory in the environment. So tooling will likely start placing things in the repository.
* The .gitignore is a whitelist so you shouldn't have to worry about this polluting your working tree if you happen to make a PR, but you will need to update the gitignore for file additions.
* Installs st, waybar, wmenu, and kitty.
* It includes the mango package that should run.
* Additionally, just for giggles I have included mango itself as an output so the version is locked to this specific flake.

theoretically, as long as you're on a wayland compositor doing all of this will let you run my dwm config, raw. Free of your Sucklessless ricing. 

