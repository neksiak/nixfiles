{ config, pkgs, ... }:
{
  home.username = "nek";
  home.homeDirectory = "/home/nek";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "cd ~/nixos-config && git add . && sudo nixos-rebuild switch --flake .#nixos";
      meow = "echo meowwww :333";
    };
  };

  programs.kitty = {
    enable = true;
    font.name = "JetBrainsMono Nerd Font";
    font.size = 12;
    settings = {
      background_opacity = "0.9";
      confirm_os_window_close = "0";
    };
  };

  home.file.".config/fastfetch/config.jsonc".text = ''
    {
        "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
        "logo": {
            "source": "$HOME/.config/fastfetch/ascii.txt",
            "padding": {
                "top": 2,
                "right": 6
            }
        },
        "display": {
            "separator": " "
        },
        "modules": [
            "break",
            "break",
            {
                "type": "title",
                "keyWidth": 10
            },
            "break",
            { "type": "os", "key": " ", "keyColor": "33" },
            { "type": "kernel", "key": " ", "keyColor": "33" },
            { "type": "packages", "key": " ", "keyColor": "33" },
            { "type": "shell", "key": " ", "keyColor": "33" },
            { "type": "terminal", "key": " ", "keyColor": "33" },
            { "type": "wm", "key": " ", "keyColor": "33" },
            { "type": "uptime", "key": " ", "keyColor": "33" },
            { "type": "media", "key": "󰝚 ", "keyColor": "33" },
            "break",
            "break"
        ]
    }
  '';

  home.file.".config/fastfetch/ascii.txt".text = ''
     /\___/\
     )     (
    =\     /=
      )   (
     /     \
     )     (
    /       \
    \       /
     \__ __/
        ))
       //
      ((
       \)
  '';
}
