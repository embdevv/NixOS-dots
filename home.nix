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

  home.stateVersion = "26.05";
}