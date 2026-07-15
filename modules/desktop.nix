{ config, pkgs, ... }: 
{
  # Niri + Noctalia 
  programs.niri.enable = true;
   
  programs.noctalia = {
    enable = true;
  };
}