# omarchy-dotfiles

My personal dotfiles for [Omarchy](https://omarchy.org) (Arch Linux + Hyprland).

**These are MY configs, made for MY machine, MY taste, and MY sanity.**
I take zero responsibility if using these breaks your system, corrupts your data, crashes an airplane, flushes a toilet at the wrong time, or causes any other disaster natural or otherwise. You've been warned.

---

## What's in here

### Waybar
Custom bar layout on top of the Omarchy default:
- **Left**: workspaces (3 persistent, active highlighted with circle border) + Spotify media player with live cava waveform visualizer
- **Center**: clock (`Fri, Mar 13 | 22:08:41` format) + Omarchy indicators
- **Right**: tray, bluetooth, network, audio, CPU (btop launcher), battery

### Cava
Config for cava audio visualizer running in raw output mode, feeding the Waybar media module with a live dot waveform.

### Hyprland
- Custom keybindings
- Hypridle screen timeout set to 2 hours (because I'm an adult)

---

## Requirements

- [Omarchy](https://omarchy.org)
- `cava` — `sudo pacman -S cava`
- `playerctl` — `sudo pacman -S playerctl`
- Spotify desktop app
- A Nerd Font (Omarchy ships one)

---

## Usage

Don't. But if you insist, copy what you need manually into `~/.config/`.

---

## License

MIT — see [LICENSE](LICENSE)
