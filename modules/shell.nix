{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      rb = "sudo nixos-rebuild switch --flake ~/nixos-config#nixos";
      rba = "sudo nixos-rebuild dry-activate --flake ~/nixos-config#nixos";
    };
  };

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
