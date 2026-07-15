# NixOS Dotfiles

> **⚠️ Warning**
>
> I am still learning NixOS, so this configuration may not follow best practices and could contain mistakes. Please review the files carefully before using them, and always back up your existing configuration.

## About

This repository contains my personal NixOS configuration, including:

- NixOS system configuration
- Home Manager configuration
- Flake configuration
- Application configurations
- Wallpapers
- Shell and terminal customization
- Desktop environment tweaks
- Gaming and performance optimizations

Feel free to use this repository as a reference or starting point for your own setup.

## Hardware

This configuration is primarily designed for my laptop:

- ASUS ROG Strix Gaming Laptop
- AMD Integrated Graphics
- NVIDIA Dedicated GPU (NVIDIA PRIME Offloading)

Some modules are hardware-specific and may not work correctly on other systems.

## NVIDIA PRIME

If your system has a similar hybrid graphics setup (AMD iGPU + NVIDIA dGPU), you may find the configuration in:

```
modules/graphics.nix
```

useful. It contains tweaks for NVIDIA PRIME offloading and gaming performance.

Use it by opening a terminal and typing:
```
nvidia-offload app_name
```

ex. nvidia-offload prismlauncher

Verify with nvidia-smi that the chosen app is running with your dGPU.

If your hardware differs, you may need to modify or remove this module.

## Disclaimer

This repository is intended for learning and personal use. I cannot guarantee that these configurations will work on your hardware without modifications.

Always read the configuration before applying it.