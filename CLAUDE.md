# Environment configuration

This project is used to configure the Linux environment on my workstation.
Please review these instructions to understand how the configuration works.

## Structure of the configuration

- `ansible` - Contains the packages and applications I use most frequently
- `bash` - Contains the bash profile script I use for my shell.
- `hyprland` - Contains the configuration for my window manager hyprland.
- `starship` - Contains the configuration for the custom prompt in my shell.
- `waybar` - Contains the configuration for the waybar I use inside hyprland.

### Waybar configuration

Waybar contains a number of custom modules:

- `custom/power` - Configures a custom menu. The script run for this module can
  be found in `waybar/.local/bin/power-menu.sh`. It uses Rofi.

## How the configuration is applied

I used `stow` on the configuration modules to symlink my configuration files
to the appropriate locations in my home directory. You don't need to run `stow`
another time to get the config files in the right place.

You should only edit files in the modules of the project, they're applied
automatically.
