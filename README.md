# .Dotfiles

Powered by: 

![](https://img.shields.io/badge/-Gnu-informational?style=for-the-badge&logo=GNU&logoColor=white&color=A42E2B)
![](https://img.shields.io/badge/-Linux-informational?style=for-the-badge&logo=Linux&logoColor=white&color=000000)
![](https://img.shields.io/badge/-Arch-informational?style=for-the-badge&logo=Arch-Linux&logoColor=white&color=1793D1)
![](https://img.shields.io/badge/-Xorg-informational?style=for-the-badge&logo=X.Org&logoColor=white&color=F28834)
![](https://img.shields.io/badge/-ZSH-informational?style=for-the-badge&logo=gnu-bash&logoColor=white&color=C97E84)
![](https://img.shields.io/badge/-Vim-informational?style=for-the-badge&logo=vim&logoColor=white&color=019733)
![](https://img.shields.io/badge/-Bspwm-informational?style=for-the-badge&logo=awesomewm&logoColor=white&color=535D6C)


<br/>
<p align="center">
  repository to manage and share my personal .dotfiles 
  <img src="https://github.com/Unixado/dotfiles/blob/master/.config/SetupScreenShots/Welcome.png">
</p>
<br/>

## What are dotfiles? 
In the Unix world programs are configured either via shell arguments or plain-text files known as **"dotfiles"**. They are called "dotfiles" because the file name begings with a dot `.` and are therefore hidden. You might find that many of the dotfiles contain an `rc` such as `.bashrc` or `.zshrc`, those are runcom files that contain an application's startup instructions.

The goal of this setup is to create a minimal distraction free work environment using the least amount of hardware ressources (350 Mb memory usage at idle proves it well). **[Ricing](https://www.reddit.com/r/unixporn/wiki/themeing/dictionary#wiki_rice)** and visual improvements are a secondary goal.

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

An initial minimal installation of the operating system is recommended. This means an installation without a desktop environment (such as Xfce, Gnome or Kde) as the window manager and the hotkey deamon might interfere with the desktop environment (another reason why [ricers](https://www.reddit.com/r/unixporn/wiki/themeing/dictionary#wiki_rice) use Arch BTW). 
#### Program dependencies

| Role  | Program |
| ------------- | ------------- |
| Windowing System  | X11 ([Xorg](https://wiki.archlinux.org/index.php/Xorg)) |
| Window Manager  | [Bspwm ](https://github.com/baskerville/bspwm)  |
| Hotkey daemon | [Sxhkd](https://wiki.archlinux.org/index.php/Sxhkd)|
|RandR | [xorg-xrandr](https://www.archlinux.org/packages/?name=xorg-xrandr)|
|Compositor | [Picom](https://github.com/yshui/picom)|
|Top Bar | [Polybar](https://github.com/polybar/polybar)|
|Terminal Emulator | [Kitty ](https://github.com/kovidgoyal/kitty)|
| Shell | Zsh|
| Music Player Server | [MPD](https://wiki.archlinux.org/index.php/Music_Player_Daemon)|
| MPD client (Cli) | [ncmpcpp](https://wiki.archlinux.org/index.php/Ncmpcpp)|
| MPD client (Gui) | [Ario](https://www.archlinux.org/packages/community/x86_64/ario/)|
| Lockscreen | [this](https://github.com/Unixado/betterlockscreen) fork of [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen)|
| Wallpaper setter for X | [Nitrogen](https://wiki.archlinux.org/index.php/Nitrogen) and [feh](https://wiki.archlinux.org/index.php/feh)|
| Dmenu replacement (Window switcher, application launcher, etc.) | [rofi](https://github.com/davatorium/rofi)|
| Audio visualizer | [Glava](https://github.com/jarcode-foss/glava)|
| Process Manager | Htop|
| System information tool | [neofetch](https://github.com/dylanaraps/neofetch)|

#### Font dependencies

Some fonts will need to be installed to achieve the same results as in the screenshots.<br/>
`Free Sans Regular`<br/>
`ttf-nerd-fonts-symbols`<br/>
[Meslo Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Meslo) <br/>
`ttf-font-awesome`<br/>

* The default font used globally in GTK and qt5 applications as well as in the polybar bar is the `Free Sans Regular` font. This font could be found in the `gnu-free-fonts` package available in most distribution official repositories. 

* The terminal emulator (kitty) uses the following fonts for symbols and text respectively : `ttf-nerd-fonts-symbols`and [Meslo Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Meslo).

* Polybar requires `ttf-font-awesome`to display bar glyphs.

#### Icons 

The [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) icon theme is used in the screenshots. Feel free to choose any other Icon theme as there are no icon dependencies set in the dotfiles.

## Features

### Polybar 

The top bar was configured in a minimal way to only contain essentials and be distraction free. 


<p align="center">
  <img src="https://github.com/Unixado/dotfiles/blob/master/.config/SetupScreenShots/PolybarScreenshot.png">
</p>

#### Workspaces

The left of the bar displays workspaces configured in `$HOME/.config/bspwm/bspwmrc`; in our case 10 workspaces have been defined, each containing a set of window rules. The user can move to different workspaces by scrolling on the worspace section of the bar.<br/>

Workspaces can be in one of the following 3 states: <img align="right" src="https://github.com/Unixado/dotfiles/blob/master/.config/SetupScreenShots/PolybarWorkspaces.png"> 
  
1. Empty (No windows open) - left glyph
2. Occupied (One or more windows open) - center glyph
3. Focused (Current open workspace) - right glyph 

Workspaces can only be in one state at a time. If a workspace is "Focused" and "Empty", it will have a "Focused" state. The same is also true for "Occupied" and "Focused" workspaces. 

#### Window title

The center of the bar displays the title of focused window. retrieve X window titles is done using [xtitle](https://github.com/baskerville/xtitle).<br/>
For example, a Vim instance editing the `$HOME/.config/bspwm/bspwmrc`file will display the following:
<p align="center">
  <img src="https://github.com/Unixado/dotfiles/blob/master/.config/SetupScreenShots/Xtitle.png">
</p>

#### Time and Date

The time and date is displayed on far right of the bar in a 24 hour `HH:MM` format and `YY/MM/DD` format respectively. They are seperated by a seperator for clarity.
<p align="center">
  <img src="https://github.com/Unixado/dotfiles/blob/master/.config/SetupScreenShots/TimeandDatePolybar.png">
</p>

#### Battery 

The battery percentage is showed on the right of the bar right next to the time and date. The text will be Green when the battery is in a "Charging" state. The text will have the same color as other bar texts when the battery is in "Full" or "Discharging" states.
| Charging  | Discharging |
| ------------- | ------------- |
|<img align="center" src="https://github.com/Unixado/dotfiles/blob/master/.config/SetupScreenShots/PolybarBatteryCharging.png">|<img align="center" src="https://github.com/Unixado/dotfiles/blob/master/.config/SetupScreenShots/PolybarBatteryDischarging.png">

#### Keyboard layout

The Keyboard layout is shown on the right of the bar, next to the battery indicator and the volume indicator. A us keyboard layout will be shown as such: <img src="https://github.com/Unixado/dotfiles/blob/master/.config/SetupScreenShots/PolybarKeyboardLayout.png">

#### Audio Volume indicator

The audio volume is shown on the right of the bar, next to the keyboard layout indicator. It shows the volume of the device that is output by [ALSA](https://www.alsa-project.org/wiki/Main_Page) (Advanced Linux Sound Architecture). The indicator will turn Red when the system audio is muted. Scrolling on the volume bar will increase/decrease the volume and clicking on the bar will mute/unmute the system audio.

| ALSA Volume Indicator  | ALSA Muted Audio |
| ------------- | ------------- |
|<img align="center" src="https://github.com/Unixado/dotfiles/blob/master/.config/SetupScreenShots/PolybarAudioVolume.png">|<img align="center" src="https://github.com/Unixado/dotfiles/blob/master/.config/SetupScreenShots/PolybarAudioVolumeMute.png">

### WM Keybinding  

general:
| Key Binding  | Associated Action |
| ------------- | ------------- |
| super + return  | open terminal (kitty) |
| super + space  | run rofi |
| super + escape | reload sxhkd configuration files |

bspwm:
| Key Binding  | Associated Action |
| ------------- | ------------- |
| super + alt + q | logout of Xorg (return to TTY) |
| super + alt + r | restart bspwm |
| super + w | close focused window | 
| super + shift + w | kill focused window |
| super + m | switch between monocle and tiled layouts |
| super + y | send the newest selected node to the newest preselected node|
| super + g | swap the focused node with the biggest window |

States & Flags:
| Key Bindings  | Associated Action |
| ------------- | ------------- |
| super + t | set window state to "tiled"|
| super + shift + t | set window state to "semi tiled" |
| super + s | set window state to "floating" |
| super + f | set window state to "fullscreen" | 
| super + ctrl + m | set node flag to "marked" | 
| super + ctrl + x | set node flag to "locked" |
| super + ctrl + y | set node flag to "sticky" |
| super + ctrl + z | set node flag to "private" |

Focusing & Swapping: 
| Key Binding  | Associated Action |
| ------------- | ------------- |
| super + h | focus the node in the west direction |
| super + l | focus the node in the east direction |
| super + j | focus the node in the south direction |
| super + k | focus the node in the north direction |

Power: 
| Key Binding  | Associated Action |
| ------------- | ------------- |
| super + alt + 1 | lock the screen | 
| super + alt + 2 | lock and suspend | 
| super + alt + 3 | reboot | 
| super + alt + 4 | poweroff | 

Applications: 
| Key Binding  | Associated Action |
| ------------- | ------------- |
| super + alt + s | take a screenshot using gnome-screenshot | 
| super + alt + f | launch Firefox | 
| super + alt + m | launch Ario | 


