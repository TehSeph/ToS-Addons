### DO NOT DOWNLOAD THE FILES IN THIS REPO! USE [RELEASES](https://github.com/TehSeph/tos-addons/releases) INSTEAD!

The files in this repo are for development only. To use these addons in your game, download the desired zip files from the latest [release](https://github.com/TehSeph/tos-addons/releases) and extract them to the root folder of your Tree of Savior's installation path.

Usually this is something like `C:\Program Files\Steam\SteamApps\common\TreeOfSavior\`

Before extracting, make sure each ipf file in the `data` folder of the zip has a `☕` in front (example: `☕coloreditemnames.ipf`)
If they don't: After you extract them, rename them so they do. This is important. See the [FAQ](https://github.com/TehSeph/tos-addons#why-is-there-a--symbol-in-front-of-your-addons) below if you don't know why.

---

# Addons

### Colored Item Names - v1.0.0

Colorizes item names *_everywhere_* based on the item's grade/rarity (not stars). Also colors any set pieces green and colors any recipes by their crafted item's rarity instead of their own rarity.

![Screenshot](http://i.imgur.com/9R6zTBo.jpg)

*TODO: Icon outlines, colored item drop names, item drop names always shown.*

### F**k Pets! - v1.0.0

Hides pet stats and disables the annoying pet ring-menu. No more pets getting in the way of talking to NPCs or accidentally opening their menu in the middle of a fight! Fuck pets!

*TODO: Disable targeting on pets.*

---

# FAQ

### Are these addons safe/approved by IMC?
This has got to be the most asked question any addon author gets. It's also the stupidest question anyone ever asks. IMC doesn't have the time to go around approving every addon that shows up on the reddit homepage. They would rather spend their time working on bugfixes, new content, and managing their game. Waiting for an addon to get "approved" before using it is a good way to never use any addons ever. For the same reasons, IMC also isn't going to go around banning people for using addons. If you honestly believe this, then you're not very bright. Sorry, thems tha facts yo!

### Why is there a `☕` symbol in front of your addons?
Because I love coffee, duh. And also because this is an exploit found to load ipf files into the game without having to modify the official files, like [Excrulon](https://github.com/Excrulon/Tree-of-Savior-Lua-Mods)'s `SumAni.ipf` edit. How? Well, when the game's patcher starts, it deletes any new files that are not in the list of original files. But for some reason or another (maybe just dumb luck) this process ignores files with a unicode character in their names. However when the client itself loads the files, it just loads the entire folder, including the files with unicode characters! By exploiting this, addon authors have found a way to cleanly load our addons into the game without the need to create new addon updates every time an official patch is made to the file we were previously modifying.

### What addons do your addons conflict with?
Rather than say what they might conflict with it's easier for me to just give you a list of addons they will **never** conflict with. The authors of the repos below and myself all work closely together to develop our addons, and I can 100% guarantee that all of my addons have been tested to work with every single one of their addons.

- https://github.com/Excrulon/Tree-of-Savior-Lua-Mods
- https://github.com/fiote/treeofsavior-addons
- https://github.com/Miei/TOS-lua
- https://github.com/MizukiBelhi/ExtendedUI
- https://github.com/MrJul/ToS-EnhancedCollection
- https://github.com/WillTheDoggy/Doggy-ToS-Addons
- https://github.com/Xanaxiel/ToS-Addons

If you still have questions or concerns, join our ToS Addon Discord server https://discord.gg/0yyOKTr8o3OdJTxa

---
Copyright (c) 2016 under the [GNU AGPLv3](https://github.com/TehSeph/tos-addons/blob/master/LICENSE) license.
