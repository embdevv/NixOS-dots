{ pkgs, ... }:
{
  programs.fish.enable = true;
  users.users.embdev.shell = pkgs.fish;
  
  environment.systemPackages = with pkgs; [
    fastfetch
    bat
    eza
    zoxide
  ];

  environment.shellInit = ''
  '';
}
