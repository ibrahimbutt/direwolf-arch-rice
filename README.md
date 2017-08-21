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

### Overview of Set-Up

### Arch Linux

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

#### Time Commitment
You should be done in an hour, however, it may take longer depending on your internet connection.
