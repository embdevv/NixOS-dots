{ config, lib, pkgs, inputs, ... }:
let
  font = "FiraCode Nerd Font";
in
{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  # Noctalia Shell Configuration (v5)
  programs.noctalia = {
    enable = true;
    systemd.enable = true;

    settings = {
      theme = {
        mode = "dark";
        source = "builtin";
        builtin = "Catppuccin";
      };
    };
  };

  # Fish shell
  programs.fish = {
    enable = true;
    shellAliases = {
      pokemmo = "env __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia flatpak run com.pokemmo.PokeMMO";
    };
  };

  # Alacritty
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = { family = font; style = "Regular"; };
        bold   = { family = font; style = "Bold"; };
        italic = { family = font; style = "Italic"; };
        size = 11.0;
      };
    };
  };

  # Starship prompt
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      add_newline = true;
      format = "$directory$git_branch$git_status$character";

      character = {
        success_symbol = "[➜](bold green)";
        error_symbol   = "[✗](bold red)";
      };

      directory = {
        truncation_length = 3;
        style = "bold cyan";
      };

      git_branch = {
        symbol = " ";
        style = "bold purple";
      };

      git_status = {
        style = "yellow";
      };
    };
  };

  home.stateVersion = "26.05";
}