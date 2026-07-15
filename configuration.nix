# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/audio.nix
      ./modules/boot.nix
      ./modules/desktop.nix
      ./modules/graphics.nix
      ./modules/nix.nix
      ./modules/packages.nix
      ./modules/rog.nix
      ./modules/services.nix
      ./modules/shell.nix
      ./modules/system.nix
    ];
  


  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "26.05"; # Did you read the comment?

}
