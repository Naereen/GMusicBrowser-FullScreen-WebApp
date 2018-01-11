#!/usr/bin/env bash
# Launcher script for https://github.com/Naereen/GMusicBrowser-FullScreen-WebApp
# MIT Licence, https://lbesson.mit-license.org/.

# TODO change path here to a more generic one
cd /home/lilian/publis/GMusicBrowser-FullScreen-WebApp.git/

FLASK_APP=start_ui.py flask run --host=0.0.0.0 --port=9999 &
#FLASK_PID=$?

[ -x notify-send ] && notify-send "Full screen mode for GMusicBrowser" "Mode plein écran pour GMusicBrowser bien lancé, ouvert dans Chromium"

#killflask(){
#    kill $FLASK_PID
#}
#trap killflask EXIT

chromium-browser http://0.0.0.0:9999/
