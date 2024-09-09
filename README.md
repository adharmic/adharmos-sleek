# adharmOS as a Nix flake

## Overview
- adharmOS is the Linux config I'm running on my laptop (named after my online alias).
- My goals are to make it keyboard-centric, snappy, and nice to look at.

### Who
- Me! Just adharmic so far, but I'm always open to feedback and contribution.
- I do, however, have to thank all of the great minds behind the many open-source packages used in this project.

### What
- A minimal, reproducible, modular, but still stylish NixOS-based Linux configuration.

### Where
- This is made for my Framework 13 laptop, but the goal is to make this configuration system agnostic.

### When
- Over the past few weeks, I've been diving deep into the rabbit hole of Linux and its various DEs and distros.

### Why
- I've grown so tired of the cruft of pre-built operating systems.
- The inconsistency and lack of customizability of Windows made me jump to Mac.
- Tinkering with MacOS and hitting brick walls with big Apple logos on them made me jump to Linux.
- After trying to install Arch 10 times and restarting from scratch because I didn't jive with some part of the config, I took the plunge and went for Nix.
- The declarative package management is a game changer. I've rewritten so many configurations and I have minimal confusion about all of the moving parts.

### How
- The declarative and modular model Nix employs makes it remarkably easy to test and run completely different systems with just one or two commands.
- The granular control over individual packages and their interactions means no more worries about version conflicts or rogue config files. 
- The NixOS wiki and community are incredibly active and any setup issues I've encountered have had dedicated threads on the forum.

## Notes
- flake.nix acts as an entry and exit point for the system configuration.
- It is what builds and returns the system using the submodules declared within it.

## Installation
- The installation documentation is in the works.
- I haven't had a chance to try setting up this config on another machine yet.
- I want to try and make it a completely modular and self-contained system first.
- Here's my best estimate for how you might run this config on your machine:
1. Download and run a NixOS installation medium.
2. Partition your drive.
3. Generate a hardware-config file via Nix.
4. Clone this repository via git.
5. Replace the existing hardware-config file with your own.
6. `sudo nixos-install --flake .#${hostname}` in the repo folder, where hostname is whatever you configured it to be. 
7. Before or after rebooting, run `nix-shell -p home-manager`.
8. Install the home-manager config using `home-manager switch --flake .#user@${hostname}` where user and hostname are whatever you configured them to be.
9. Adjust the configuration to match your needs!
