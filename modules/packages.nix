{ pkgs, ...}: 
{

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Fonts
  fonts.packages = with pkgs; [
     jetbrains-mono
     noto-fonts
     font-awesome
     nerd-fonts.symbols-only
     nerd-fonts.fira-code
     nerd-fonts.fira-mono
     nerd-fonts._0xproto
     nerd-fonts.atkynson-mono
     nerd-fonts.caskaydia-cove
     nerd-fonts.caskaydia-mono
     nerd-fonts.hack
     nerd-fonts.meslo-lg
     nerd-fonts.proggy-clean-tt
     nerd-fonts.space-mono
  ];

  programs.steam.enable = true;
  programs.fish.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    niri
    alacritty
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    neovim
    wget
    git
    pciutils
    fuzzel
    #thunar # Let's say we want to replace thunar with nautilus
    nautilus
    mpv
    
    # Desktop Apps
    firefox
    discord  
    vscode
    prismlauncher
    github-desktop
    obsidian
    unityhub
    obs-studio
    lutris
 
    # Audio Controller
    pulsemixer

    # Hardware Tools
    xwayland-satellite
    xdg-desktop-portal
 
    # ROG
    asusctl
    supergfxctl
    
    # Development
    gcc 
    ripgrep
    fd
    unzip
    lazygit
];
}
