# Full Screen mode for [GMusicBrowser](http://gmusicbrowser.org/)

This program is a simple web app that connects to the GMusicBrowser API to display in white-on-black and very large font the current song played by my favorite music player.
It allows to change to the next and prev song.

## Why?
> When I host some friends, and use my laptop to play music, and I don't want my screen to show anything but the name of the song, and my friends should only be able to go to the next song, not read my email or whatever: putting this webpage in full screen helps!

> Also, it is displayed in very large font, to be easily readable from anywhere in the room.

## Screenshot
![screenshots/demo1.png](screenshots/demo1.png)

## How to install
- Install Python, preferably version 3, and pip,
- Install requests and Flask modules with `pip`:
```bash
sudo pip3 install -U requests flask
```
- Clone this project,
```bash
cd ~/publis/
git clone https://github.com/Naereen/GMusicBrowser-FullScreen-WebApp.git
```
- Save it somewhere, for instance `~/publis/GMusicBrowser-FullScreen-WebApp.git`,
- When you want to use it, go in the folder, and do `make`.

Note: you can also use [this .desktop file](gmusicbrowser-fullscreen-webapp.desktop) to install this as a desktop application:

```bash
$ desktop-file-validate gmusicbrowser-fullscreen-webapp.desktop
# if this is OK, install it
$ sudo desktop-file-install gmusicbrowser-fullscreen-webapp.desktop
```

Then the application will be available from your desktop menu, under the name "Full screen mode for GMusicBrowser".

## Settings
In GMusicBrowser settings, under the tab "Plugins", enable the "Current song" plugin,
and use these two values for the two text boxes:

- Command to run when the song starts:
  `/home/lilian/publis/GMusicBrowser-FullScreen-WebApp.git/update_ui.py start %t %a %l %y %d %n %f %c`

- Command to run when the song stops:
  `/home/lilian/publis/GMusicBrowser-FullScreen-WebApp.git/update_ui.py stop %t %a %l %y %d %n %f %c`

Of course, adapt the path to where you downloaded and saved `gmusicbrowser_fullscreen_info`.

## Interactive demo
This short (15s) video shows how to do that:

![screenshots/demo2.gif](screenshots/demo2.gif)

## How to use
- Launching the app also opens it in Chromium (by default).
- Use 'n' to play next song, 'p' for previous song, 'space' to pause, 'u' and 'd' to increase and decrease volume (needs [this script](Volume.sh) somewhere in your PATH).

> This is a **very minimalist** interface to GMusicBrowser, any other manipulation still have to be done from the main GMusicBrowser interface, of course!

## Interactive demo
This other video (30s) shows how to do that:

![screenshots/demo3.gif](screenshots/demo3.gif)

> It shows a nice "fireworks" effects that appears on the page for each click and each action (either a click on a button or a shortcut).
> It is coded [with this script](static/js/fireworks.js), which uses the [awesome `anime.js`](http://animejs.com/) project by [@juliangarnier](https://github.com/juliangarnier/) ([see on GitHub](https://github.com/juliangarnier/anime), but I disabled it as I was tired of it.
> You can enable it again by uncommenting the lines 198-200 on the template file: [`template.html`](template.html).

----

## :scroll: License ? [![GitHub license](https://img.shields.io/github/license/Naereen/GMusicBrowser-FullScreen-WebApp.svg)](https://github.com/Naereen/GMusicBrowser-FullScreen-WebApp/blob/master/LICENSE)
[MIT Licensed](https://lbesson.mit-license.org/) (file [LICENSE](LICENSE)).
© [Lilian Besson](https://GitHub.com/Naereen), 2018-2021.

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/GMusicBrowser-FullScreen-WebApp/graphs/commit-activity)
[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://GitHub.com/Naereen/ama)
[![Analytics](https://ga-beacon.appspot.com/UA-38514290-17/github.com/Naereen/GMusicBrowser-FullScreen-WebApp/README.md?pixel)](https://GitHub.com/Naereen/GMusicBrowser-FullScreen-WebApp/)
[![Made with Python v3.4+](https://img.shields.io/badge/Made%20with-Python-1f425f.svg)](https://www.python.org/)
[![Made with Bash v4.4+](https://img.shields.io/badge/Made%20with-GNU%20Bash-1f425f.svg)](https://www.gnu.org/software/bash/)

[![ForTheBadge built-with-swag](http://ForTheBadge.com/images/badges/built-with-swag.svg)](https://GitHub.com/Naereen/)
[![ForTheBadge uses-badges](http://ForTheBadge.com/images/badges/uses-badges.svg)](http://ForTheBadge.com)
[![ForTheBadge uses-git](http://ForTheBadge.com/images/badges/uses-git.svg)](https://GitHub.com/)
[![ForTheBadge uses-css](http://ForTheBadge.com/images/badges/uses-css.svg)](http://ForTheBadge.com)
[![ForTheBadge uses-html](http://ForTheBadge.com/images/badges/uses-html.svg)](http://ForTheBadge.com)
[![ForTheBadge uses-js](http://ForTheBadge.com/images/badges/uses-js.svg)](http://ForTheBadge.com)
