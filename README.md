# dotfiles

**Powered by:**

![](https://img.shields.io/badge/-Gnu-informational?style=for-the-badge&logo=GNU&logoColor=white&color=A42E2B)
![](https://img.shields.io/badge/-Linux-informational?style=for-the-badge&logo=Linux&logoColor=white&color=000000)
![](https://img.shields.io/badge/-Arch-informational?style=for-the-badge&logo=Arch-Linux&logoColor=white&color=1793D1)
![](https://img.shields.io/badge/-Xorg-informational?style=for-the-badge&logo=X.Org&logoColor=white&color=F28834)
![](https://img.shields.io/badge/-ZSH-informational?style=for-the-badge&logo=gnu-bash&logoColor=white&color=C97E84)
![](https://img.shields.io/badge/-Vim-informational?style=for-the-badge&logo=vim&logoColor=white&color=019733)
![](https://img.shields.io/badge/-Bspwm-informational?style=for-the-badge&logo=awesomewm&logoColor=white&color=535D6C)


### What are dotfiles? 
In the Unix world programs are configured either via shell arguments or plain-text files known as **"dotfiles"**. They are called "dotfiles" because the file name begings with a dot `.` and are therefore hidden. You might find that many of the dotfiles contain an `rc` such as `.bashrc` or `.zshrc`, those are runcom files that contain an application's startup instructions.

The goal of this setup is to create a minimal distraction free work environment using the least amount of hardware ressources (350 Mb memory usage at idle proves it well). **[Ricing](https://www.reddit.com/r/unixporn/wiki/themeing/dictionary#wiki_rice)** and visual improvements are a secondary goal.

### Preview 

<p align="center">
  <img src="https://github.com/UNIX-Like-Man/dotfiles/blob/master/.config/SetupScreenShots/Screen4.png">
</p>

|            |           |
| ------------- | ------------- |
| <img src="https://github.com/UNIX-Like-Man/dotfiles/blob/master/.config/SetupScreenShots/Screen5.png"> |   <img src="https://github.com/UNIX-Like-Man/dotfiles/blob/master/.config/SetupScreenShots/Screen3.png">|
| <img src="https://github.com/UNIX-Like-Man/dotfiles/blob/master/.config/SetupScreenShots/Screen2.png"> |   <img src="https://github.com/UNIX-Like-Man/dotfiles/blob/master/.config/SetupScreenShots/Screen7.png"> | 

*** 

# Dependencies

## Operating System

This setup could be reproduced on any GNU/Linux distribution using Systemd.
It could however not be could not be fully reproduced on macOs or Bsd systems. 

An initial minimal installation of the operating system is recommended. This means an installation without a desktop environment (such as Xfce, Gnome or Kde) as the window manager and the hotkey deamon might interfere with the desktop environment (another reason why [ricers](https://www.reddit.com/r/unixporn/wiki/themeing/dictionary#wiki_rice) use Arch BTW). 

## Programs

| Role  | Program |
| ------------- | ------------- |
| Display Server  | X11 ([Xorg](https://wiki.archlinux.org/index.php/Xorg)) |
| Window Manager  | [Bspwm ](https://github.com/baskerville/bspwm)  |
| Hotkey daemon | [Sxhkd](https://wiki.archlinux.org/index.php/Sxhkd)|
|RandR | [xorg-xrandr](https://www.archlinux.org/packages/?name=xorg-xrandr)|
|Compositor | [Picom](https://github.com/yshui/picom)|
| Bars | [Polybar](https://github.com/polybar/polybar)|
|Terminal Emulator | [Kitty ](https://github.com/kovidgoyal/kitty)|
| Shell | Zsh|
| Music Player Server | [MPD](https://wiki.archlinux.org/index.php/Music_Player_Daemon)|
| MPD client (Cli) | [ncmpcpp](https://wiki.archlinux.org/index.php/Ncmpcpp)|
| MPD client (Gui) | [Ario](https://www.archlinux.org/packages/community/x86_64/ario/)|
| Lockscreen | [this](https://github.com/Unixado/betterlockscreen) fork of [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen)|
| Wallpaper setter for X | [Nitrogen](https://wiki.archlinux.org/index.php/Nitrogen) and [feh](https://wiki.archlinux.org/index.php/feh)|
| Dmenu replacement (Window switcher, application launcher, etc.) | [rofi](https://github.com/davatorium/rofi)|
| Audio visualizer | [Glava](https://github.com/jarcode-foss/glava)|
| File manager (Cli) | [ranger](https://github.com/ranger/ranger) | 
| File manager (Gui) | [Thunar](https://docs.xfce.org/xfce/thunar/start)|
| Document viewer | [Zathura](https://pwmt.org/projects/zathura/) |

## Fonts

Some fonts will need to be installed to achieve the same results as in the screenshots.<br/>
`Free Sans Regular`<br/>
`ttf-nerd-fonts-symbols`<br/>
`Meslo Nerd Font`<br/>
`ttf-font-awesome`<br/>

* The default font used globally in GTK and qt5 applications as well as in the polybar bar is the `Free Sans Regular` font. This font could be found in the `gnu-free-fonts` package available in most distribution official repositories. 

* The terminal emulator (kitty) uses the following fonts for symbols and text respectively : `ttf-nerd-fonts-symbols`and [Meslo Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Meslo).

* Polybar requires `ttf-font-awesome`to display bar glyphs.

## Icons 

The [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) icon theme is used in the screenshots. The color of "places" and folders have been changed using the [papirus folders](https://github.com/PapirusDevelopmentTeam/papirus-folders) script.

*** 

# Sxhkd key bindings

| Key Binding  | Associated Action | Category | 
| ------------- | ------------- |---------------------|
| super + return  | open terminal (kitty) | General | 
| super + space  | run rofi as program launcher | General | 
| super + alt + space | run rofi as window switcher | General | 
| super + escape | reload sxhkd configuration files | General | 
| super + alt + q | logout of Xorg (return to TTY) | BSPWM | 
| super + alt + r | restart bspwm | BSPWM | 
| super + w | close focused window | BSPWM | 
| super + shift + w | kill focused window | BSPWM | 
| super + m | switch between monocle and tiled layouts | BSPWM |
| super + y | send the newest selected node to the newest preselected node| BSPWM | 
| super + g | swap the focused node with the biggest window | BSPWM | 
| super + t | set window state to "tiled"| States | 
| super + shift + t | set window state to "pseudo tiled" | States | 
| super + s | set window state to "floating" | States | 
| super + f | set window state to "fullscreen" | States | 
| super + ctrl + m | set node flag to "marked" | Flags | 
| super + ctrl + x | set node flag to "locked" | Flags | 
| super + ctrl + y | set node flag to "sticky" | Flags | 
| super + ctrl + z | set node flag to "private" | Flags | 
| super + (h l, j, k) | focus the node in the (west, east, south, north) direction (Vim directions) | Focusing | 
| super + comma | focus the first selected node when multiple are selected | Focusing | 
| super + period | focus the last selected node when multiple are selected | Focusing | 
| super + (shift) +  c | cycle through next/(previous) windows in a workspace | Focusing | 
| super + grave | focus the last node | Focusing | 
| super + tab | focus the last workspace | Focusing | 
| super + { |  focus the previous workspace | Focusing | 
| super + } | focus the next workspace | Focusing |
| super + o | focus the older node in the focus history | Focusing | 
| super + i | focus the newer node in the focus history | Focusing | 
| super + p | select multiple nodes in a workspace | Selecting | 
| super + b | select the brother node in a workspace | Moving | 
| super + r | rotate all windows clockwise by 90 degrees | Moving | 
| super + shift + (1,2,..,0) | focus or send window to the given workspace | Moving | 
| super + shift + r | rotate all windows counterclockwise by 90 degrees | Moving | 
| super + alt + shift + r | flip desktop (What is on the right/top moves to the left/bottom) | Moving | 
| super + (left, down, up, right) | move a floating window | Moving | 
| super + alt + (h, j, k, l) | expand a window by moving its side outward (Vim keys) | Resizing | 
| super + alt + shift + (h, j, k, l) | contract a window by moving its side inward (Vim keys)| Resizing | 
| super + ctl + (h,j,k,l) | preselect the direction (Vim directions) | Preselection | 
| super + ctl + (1,2,..,9) | preselect the ratio | Preselection | 
| super + ctl + (shift) + space | cancel preselection for focused node (desktop) | Preselection | 
| super + shift + y | remove all gaps | Gaps | 
| super + shift + u | set gaps t 5 pixels | Gaps | 
| super + shift + i | set gaps to 10 pixels | Gaps | 
| super + shift + o | set gaps to 20 pixels | Gaps | 
| super + minus | make the gaps smaller by 2 pixels | Gaps | 
| super + equal | make the gaps larger by 2 pixels | Gaps | 
| super + alt + 1 | lock the screen (dimblur mode) | Power | 
| super + alt + 2 | lock and suspend (dimblur mode) | Power | 
| super + alt + 3 | reboot | Power | 
| super + alt + 4 | poweroff | Power | 
| super + alt + s | take a screenshot using gnome-screenshot | Applications | 
| super + alt + f | launch Firefox | Applications | 
| super + alt + m | launch Ario | Applications | 
| super + alt + t | launch thunar | Applications | 
| super + alt + z | distract mode (open a bunch of random windows) | Applications |

*** 

# Managing dotfiles
There are many way people manage their dotfiles. A naive approach would be to create a git repository in the `$HOME` directory. This is obviously a bad idea because you could no longer have nested git repositories in your home directory. A second still naive approach would be to create a git repository in a directory and copy all dotfiles from the `$HOME` directory to it. This is again not a good idea as you will have to remember to copy all files to the created git directory at every change. After using the second approach, you might stumble upon an article about **symbolic links (symlinks)**  and think that symlinking the files into your initialized git repositry is a good idea. This third method is a huge improvement compared to the first method but symlinks can get out of hand after a while. Soon you will realize that you are not SystemD and you don't want to bother with symlinking. 



So here's what I now do to manage my dotfiles after going through all those steps: 

1. create a bare git repository. Git bare repositories, contain no working or checked out copy of your source files and the revision history of your repo in the root folder of your repository instead of in a `.git` subfolder. 

>`git init --bare $HOME/dotfiles`

2. Set an alias for managing the bare repository we just created. You can name your alias _dot_ or _config_. Let's call it _dot_. (change `.bashrc` to `.zshrc` if you use zsh.

>`echo "alias dot='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc`

3. There will be a lot of files in our `$HOME` directory that won't be dotfiles. So let's also ignore all those untracked files. 
> `dot config --local status.showUntrackedFiles no`


Here you have it! You can now use the new git dotfiles repo like any other git repo.

```
dot add /path/to/file
dot commit -m "A short message"
dot push
```



Note: Many people use [GNU Stow](https://www.gnu.org/software/stow/) which is also a good option. 

*** 

# Installation 
//TODO

***

# Polybar 
