# Noctalia Shell

### NixOS + Niri Dotfiles

> *A modern, minimal NixOS desktop powered by Niri, built for reproducibility, customization, and everyday development.*

> **⚠️ Warning**
>
> I am still learning NixOS, so this configuration may not follow best practices and could contain mistakes. Please review the files carefully before using them, and always back up your existing configuration.

Feel free to fork this project, contribute, and expand it for your own needs. 

## Demonstration

https://github.com/user-attachments/assets/9a69d867-2d5c-45aa-b623-25891d69b8a7

Wallpapers from SleepyCatHey's CozyPixels [repository](https://github.com/SleepyCatHey/CozyPixels)

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

## Aliases / Shortcuts

This config sets up a few Fish shell abbreviations to make rebuilding faster:

| Abbreviation | Expands to |
|---|---|
| `rb`  | `sudo nixos-rebuild switch --flake ~/nixos-config#nixos` |
| `rba` | `sudo nixos-rebuild dry-activate --flake ~/nixos-config#nixos` |

These are defined in [`modules/shell.nix`](modules/shell.nix) under `programs.fish.shellAbbrs`. Add your own by extending that block.

This config also installs a few modern CLI replacements as system packages:

- [`eza`](https://github.com/eza-community/eza) — a modern replacement for `ls`
- [`bat`](https://github.com/sharkdp/bat) — a `cat` replacement with syntax highlighting
- [`zoxide`](https://github.com/ajeetdsouza/zoxide) — a smarter `cd` that learns your habits
- [`fastfetch`](https://github.com/fastfetch-cli/fastfetch) — a fast system info tool

## Disclaimer

This repository is intended for learning and personal use. I cannot guarantee that these configurations will work on your hardware without modifications.

Always review the configuration before applying it to your system.

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

## FAQ

### Q: So, how do you install packages?

Good thing you asked! It's just as simple as you think. Open `nixos-config/modules/packages.nix` with a code editor. From there, list the package you want to install. You can check the package name [here](https://search.nixos.org/packages) before installation.

Here's a demo on how to install packages:

https://github.com/user-attachments/assets/42e607cb-b59f-47a9-b7b4-6e1cba8ec5c3


### Q: I found a bug, how do I let you know?
Found a bug or have a suggestion? Open an [issue](https://github.com/embdevv/NixOS-dots/issues).

### Q: Will this work on my current setup?
Well, technically I would recommend a fresh install of NixOS to ensure a conflict-free system. However, if you do know your way around it, then feel free!

## Roadmap
- Update README with screenshots and features
- Have a workflow with nix-shell
  - Including a custom command that can run any project temporarily, and deletes cache when project is closed to avoid clutter

### Credits

Thanks to the NixOS community and everyone who shares their configurations online.

## License
This project is licensed under the [MIT License](LICENSE).
