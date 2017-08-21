# Ricing Arch Linux

## Foreword

### Who is this guide for?

Those who are interested in ricing or would like to know what it is, whether they are experienced Linux users or complete beginners.

Those who want control over the way their desktop environment [DE] looks, far beyond the offerings of Windows and OS X.

Those who dislike extra/unneeded features cluttering their DE. With ricing and Linux in general, you can keep what you want/need and remove everything else. This is especially helpful for older systems.

### Hold up... "ricing"?

If the term confuses you, you aren't alone. You're probably thinking, what does rice have to do with computers, at all? Below is the definition of ricing taken from [u/unixporn](https://www.reddit.com/r/unixporn/):

> "Rice" is a word that is commonly used to refer to making visual improvements and customizations on one's desktop. It was inherited from the practice of customizing cheap Asian import cars to make them appear to be faster than they actually were - which was also known as "ricing". Here on /r/unixporn, the word is accepted by the majority of the community and is used sparingly to refer to a visually attractive desktop upgraded beyond the default.


## What You'll Be Creating Today

![The Setup](https://github.com/IbrahimButt/Direwolf-Arch-Rice/blob/master/images/finishedsetup.png)

There's not a lot going on, right? Yeah, that was the whole point. I mostly use Firefox and a powerful yet lightweight text editor called Vim. I don't need much. It's my personal setup and what I'm using at the time of writing. If you want more, this guide will teach you the basics and provide a set-up to 'improve' on with your own needs in mind.

Visit [u/unixporn](https://www.reddit.com/r/unixporn/) to see what others have created.

### Overview of Setup

#### Time Commitment
You should be done in an hour, however, it may take longer depending on your internet connection.

#### Arch Linux
In a nuthsell, [Arch](https://www.archlinux.org/) is an independently developed general-purpose GNU/Linux distribution. The main reason you would choose this over other distrobutions is that, it comes with the bare minimum and zero bloat. This allows you to have a lean system from the beginning, which I'm a fan of.

If you've heard of Arch, you may have heard the installation isn't so so simple. You may even find it to put you off. Dont worry about that. [Arch-Anyhwere](https://arch-anywhere.org/) makes installation easy. The only difference is that Arch-Anywhere has an installer.

Installing Arch manually is outside the scope of this guide. If you prefer to install it manually, visit the [installation guide](https://wiki.archlinux.org/index.php/installation_guide). Otherwise, install [Arch-Anywhere](https://arch-anywhere.org/download/).

*Tip: Download Arch/Arch-Anywhere while you read on to save time.*

#### Window Manager
We will be using [i3](https://i3wm.org/) as our WM. It is a dynamic window tiling manager. This means, when a window is opened, it takes up the whole desktop. When you open another window, the new and existing one will be resized to be equal. This happens each time you open a new window. Mathematically, when two windows are open, each will take one-half of screen space. When a third window is opened, they'll each take one-third of screen space and so on. The same applies if they are opened vertically. Windows can be resized, arranged in tabs and stacks. They can also be floated, meaning you can move and resize windows how you would in Windows and OS X.

![Example of i3WM tiling](https://github.com/IbrahimButt/Direwolf-Arch-Rice/blob/master/images/i3wm-example.png)

You'll be given a mini tutorial on how to manipulate and rearrange windows once i3 has been installed.

#### Package Installer
Besides Pacman, the default package installer shipped with Arch. We will be installing [Pacaur](https://github.com/rmarquis/pacaur):

> Pacaur is an Arch User Repository (AUR) helper aiming at speed and simplicity and is designed to minimize user prompt interaction.

All you need to know for now is, it saves you a lot of time in the long-term. Without it, you would need to go through the manual build process for each package which can't be installed through Pacman. This is really something I wish I knew about when I started out.

#### Staus Bar
The Polybar repository tells it best:

> A fast and easy-to-use tool for creating status bars.

> Polybar aims to help users build beautiful and highly customizable status bars for their desktop environment, without the need of having a black belt in shell scripting. Here are a few screenshots showing you what it can look like:

Polybar is modular. Meaning, if you want to see what workspace you're on and which ones have an open window, you add a module for it. If you want to see the time and date, you add a module for it. The one I have configured and is inlcuded in this guide is very minimal, since I dont need other modules. For examples that are more customised, visit the Polybar [repository](https://github.com/jaagr/polybar) and/or u/unixporn with a [restrcited search](https://www.reddit.com/r/unixporn/search?q=polybar&restrict_sr=on) to see what can be acheived.

#### Application Launcher/Dynamic Menu and File Manager
Personally, I love application launchers. It makes your workflow noticeably more efficent, than if you were to go onto a list of applications and click on the one you need to open. We will be going with dmenu. A simple, fast and lightweight dynamic menu.

[Ranger](https://github.com/ranger/ranger) is a Vim inspired CLI filemanager and is very quick to use once you get the hang of it. Besides, it can match your colorscheme. More on that later.

![Dmenu and ranger in action](https://github.com/IbrahimButt/Direwolf-Arch-Rice/blob/master/images/ranger-dmenu.png)

*Note: i3 by default does not have a feature where you can see all your applications.*

#### Themeing

Two ways in which the colorscheme can be altered is through the .Xresources file and Wal. We will be using the Python version of Wal, called  [Pywal](https://github.com/dylanaraps/pywal).

Taken from the [Arch Wiki](https://wiki.archlinux.org/index.php/x_resources):

> Xresources is a user-level configuration dotfile, typically located at ~/.Xresources. It can be used to set X resources, which are configuration parameters for X client applications.

> They can do many operations, including:
> * defining terminal colours
> * configuring terminal preferences
> * setting DPI, antialiasing, hinting and other X font settings
> ...

Taken from the Pywal repository:
> `wal` is a script that takes an image (or a directory of images), generates a colorscheme (using `imagemagick`) and then changes all of your open terminal's colors to the new colorscheme on the fly. wal then caches each generated colorscheme so that cycling through wallpapers while changing colorschemes is instantaneous.

> `wal` also merges the new colorscheme into the Xresources database so that programs on your system such as `Rofi` or `i3` use the new colors automatically. `wal` finally exports the colors into various formats so that you can use the colors in webpages, scripts, other programs etc.

Polybar can also use the colorscheme generated by Wal if you configure it to.

##### Fonts

[Overpass](http://overpassfont.org/) by [Red Hat](https://www.redhat.com/) is used in this setup. It comes with 8 weight varients and a monospaced version, named Overpass Mono.

