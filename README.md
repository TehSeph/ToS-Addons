### DO NOT DOWNLOAD THE FILES IN THIS REPO! USE [RELEASES](https://github.com/TehSeph/tos-addons/releases) INSTEAD!

The files in this repo are for development only. To use these addons in your game, download `all-addons-VERSION.zip` from the latest [release](https://github.com/TehSeph/tos-addons/releases) and extract the contents to the root folder of your Tree of Savior's installation path.

Usually this is something like `C:\Program Files\Steam\SteamApps\common\TreeOfSavior\`

Before extracting, make sure every ipf file starts with `☕` (rename them if not!) This is important! See the [FAQ](https://github.com/TehSeph/tos-addons#why-is-there-a--symbol-in-front-of-your-addons) for why.

---

# Addons

### Colored Item Names - v1.0.1

Colorizes item names *_everywhere_* based on the item's grade/rarity (not stars). Also colors any set pieces green and colors any recipes by their crafted item's rarity instead of their own rarity.

![Screenshot](http://i.imgur.com/9R6zTBo.jpg)

### F**k Pets! - v1.0.0

Hides pet stats and disables the annoying pet ring-menu. No more pets getting in the way of talking to NPCs or accidentally opening their menu in the middle of a fight! Fuck pets!

---

# FAQ

### Are these addons safe/approved by IMC?

https://treeofsavior.com/news/?n=467

> We have no plans on restricting add-ons that conveniently display information which can be obtained from external communities or between users.

> However, we are sternly against add-ons that allow abnormal gameplay such as being able to use NPC stores on a field or an auto-play program. Those are prohibited and its user is liable to be banned.

I'd say that's a yes. None of my addons will ever fall into that second category, so you're free to use them.

### Why is there a `☕` symbol in front of your addons?
Because I love coffee, duh. And also because this is an exploit found to load ipf files into the game without having to modify the official files, like [Excrulon](https://github.com/Excrulon/Tree-of-Savior-Lua-Mods)'s `SumAni.ipf` edit. How? Well, when the game's patcher starts, it deletes any new files that are not in the list of original files. But for some reason or another (maybe just dumb luck) this process ignores files with a unicode character in their names. However when the client itself loads the files, it just loads the entire folder, including the files with unicode characters! By exploiting this, addon authors have found a way to cleanly load our addons into the game without the need to create new addon updates every time an official patch is made to the file we were previously modifying.

---
Copyright (c) 2016 under the [GNU AGPLv3](https://github.com/TehSeph/tos-addons/blob/master/LICENSE) license.
