# mango-dwm-config
This is meant to provide a sensible mango default for DWM users. There is more you can do to further make it emulate DWM, consider this your quickstart to doing so. 

# Packages required. 
* https://github.com/DreamMaoMao/mangowc will list the dependencies and how to install
* waybar
* wmenu


This repository contains 3 files. 
1. `autostart.sh` `config.conf` these go inside ~/.config/mango folder.
2. `config.jsonc` this goes inside ~/.config/waybar folder

If you are on NixOS you likely won't be placing these files here yourself. You can use the Mango home manager module and source the settings and autostart_sh attributes to those files. You can do a similar thing with config.jsonc as well. 
