{ config, lib, pkgs, inputs, ... }:
{
  imports = [ 
    inputs.noctalia.homeModules.default 
  ];

  # Noctalia Shell Configuration (v5)
  programs.noctalia = {
    enable = true;
    
    # Optional: Enable the systemd service so it auto-starts with your session
    systemd.enable = true; 

    # Noctalia-specific settings
    settings = {
      theme = {
        mode = "dark";
        source = "builtin";
        builtin = "Catppuccin";
      };
    };
  };

  # Applications

  programs.fish.shellAliases = {
    pokemmo = "env __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia flatpak run com.pokemmo.PokeMMO";
  };

  home.stateVersion = "26.05";
}