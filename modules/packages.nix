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
    thunar
    
    # Desktop Apps
    firefox
    discord  
    vscode
    prismlauncher
    github-desktop
    obsidian
    unityhub
 
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
