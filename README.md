# dotfiles
repository to manage and share my personal dotfiles 

## What are dotfiles? 
In the Unix world programs are configured either via shell arguments or plain-text files known as "dotfiles". They are called "dotfiles" because the file name begings with a dot `.` and are therefore hidden. You might find that many of the dotfiles contain an `rc` such as `.bashrc` or `.zshrc`, those are runcom files that contain an application's startup instructions.

## Preview 
<p align="center">
  <img src="https://github.com/UNIX-Like-Man/dotfiles/blob/master/.config/SetupScreenShots/Screen5.png">
</p>
<p align="center">
  <img src="https://github.com/UNIX-Like-Man/dotfiles/blob/master/.config/SetupScreenShots/Screen4.png">
</p>
<p align="center">
  <img src="https://github.com/UNIX-Like-Man/dotfiles/blob/master/.config/SetupScreenShots/Screen3.png">
</p>
<p align="center">
  <img src="https://github.com/UNIX-Like-Man/dotfiles/blob/master/.config/SetupScreenShots/Screen2.png">
</p>

## Programs & Dependencies

#### Operating System

This setup could be reproduced on any GNU/Linux distribution using Systemd.
It could however not be could not be fully reproduced on macOs or Bsd systems. 

#### Program dependencies

Windowing System : X11<br/>
Window Manager : [Bspwm ](https://github.com/baskerville/bspwm)<br/>
Hotkey daemon : [Sxhkd](https://wiki.archlinux.org/index.php/Sxhkd)<br/>
Compositor : [Picom](https://github.com/yshui/picom)<br/>
Top Bar : [Polybar](https://github.com/polybar/polybar)<br/>
Terminal Emulator : [Kitty ](https://github.com/kovidgoyal/kitty)<br/>
Shell : Zsh<br/>
Music Player Server : [MPD](https://wiki.archlinux.org/index.php/Music_Player_Daemon)<br/>
MPD client : [ncmpcpp](https://wiki.archlinux.org/index.php/Ncmpcpp)<br/>
Lockscreen : [this](https://github.com/Unixado/betterlockscreen) fork of [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen)<br/>
Wallpaper setter for X : [Nitrogen](https://wiki.archlinux.org/index.php/Nitrogen) and [feh](https://wiki.archlinux.org/index.php/feh)<br/>
Dmenu replacement (Window switcher, application launcher, etc.) : [rofi](https://github.com/davatorium/rofi)<br/>
Audio visualizer : [Glava](https://github.com/jarcode-foss/glava) <br/>
Process Manager : Htop <br/>
System information tool: [neofetch](https://github.com/dylanaraps/neofetch)

#### Font dependencies

Some fonts will need to be installed to achieve the same results as in the screenshots.

* The default font used globally in GTK and qt5 applications as well as in the polybar bar is the `Free Sans Regular` font. This font could be found in the `gnu-free-fonts` package available in most distribution official repositories. 

* The terminal emulator (kitty) uses the following fonts for symbols and text respectively : `ttf-nerd-fonts-symbols`and [Meslo Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Meslo).

* Polybar requires `ttf-font-awesome`to display bar glyphs.

