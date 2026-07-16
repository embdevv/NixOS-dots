{ pkgs, ... }:
{
  programs.fish = {
    enable = true;

    shellAbbrs = {
      rb = "sudo nixos-rebuild switch --flake ~/nixos-config#nixos";
      rba = "sudo nixos-rebuild dry-activate --flake ~/nixos-config#nixos";
      gc = "sudo nix-env -p /nix/var/nix/profiles/system --delete-generations +3 && sudo nix-collect-garbage -d";

      update   = "cd ~/nixos-config && nix flake update && cd -";
      optimize = "sudo nix-store --optimise";
      gens     = "sudo nix-env -p /nix/var/nix/profiles/system --list-generations";
      rollback = "sudo nixos-rebuild switch --rollback";
      edit     = "cd ~/nixos-config && $EDITOR . && cd -";
      search   = "nix search nixpkgs";
    };

    shellAliases = {
      pokemmo = "env __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia flatpak run com.pokemmo.PokeMMO";
      unityhub = "env __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia unityhub";
      steam = "env __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia steam";
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
