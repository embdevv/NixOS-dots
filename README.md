# Noctalia Shell
### NixOS + Niri Dotfiles

> *A modern, minimal NixOS desktop powered by Niri, built for reproducibility, customization, and everyday development.*

> **⚠️ Warning**
>
> I am still learning NixOS, so this configuration may not follow best practices and could contain mistakes. Please review the files carefully before using them, and always back up your existing configuration.

## Demonstration
https://github.com/user-attachments/assets/9a69d867-2d5c-45aa-b623-25891d69b8a7


## About

**Noctalia Shell** is my personal NixOS desktop configuration built around the **Niri** scrollable tiling Wayland compositor.

This repository contains everything needed to recreate my setup, including:

- NixOS system configuration
- Home Manager configuration
- Flake configuration
- Application configurations
- Wallpapers
- Shell and terminal customization
- Desktop environment tweaks
- Gaming and performance optimizations

This is an **active work-in-progress repository**. I update it regularly as I improve my NixOS configuration, experiment with new features, or refactor existing modules. Expect frequent changes, improvements, and occasional breaking changes.

Feel free to use this repository as inspiration or as a starting point for your own setup.

## Hardware

This configuration is primarily designed for my laptop:

- ASUS ROG Strix Gaming Laptop
- AMD Integrated Graphics
- NVIDIA Dedicated GPU (NVIDIA PRIME Offloading)

Some modules are hardware-specific and may not work correctly on other systems.

## NVIDIA PRIME

If your system has a similar hybrid graphics setup (AMD iGPU + NVIDIA dGPU), you may find the configuration in:

```text
modules/graphics.nix
```

useful. It contains tweaks for NVIDIA PRIME offloading and gaming performance.

Launch applications on the dedicated NVIDIA GPU using:

```bash
nvidia-offload <application>
```

Example:

```bash
nvidia-offload prismlauncher
```

You can verify that the application is running on the dedicated GPU with:

```bash
nvidia-smi
```

If your hardware differs, you may need to modify or remove this module.

## Disclaimer

This repository is intended for learning and personal use. I cannot guarantee that these configurations will work on your hardware without modifications.

Always review the configuration before applying it to your system.

## Screenshots

(WILL BE ADDED SOON)

## Features

- Niri
- Noctalia Shell
- Alacritty
- Fish/Zsh
- Fastfetch
- NVIDIA PRIME
- Gaming optimizations

## Some Applications
- Unity Hub 
- Prism Launcher
- Steam
- Obsidian
- Firefox


### Credits

Thanks to the NixOS community and everyone who shares their configurations online.
