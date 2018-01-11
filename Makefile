# Simple Makefile to experiment and develop
# my "GMusicBrowser-FullScreen-WebApp" program
# https://github.com/Naereen/GMusicBrowser-FullScreen-WebApp
SHELL=/usr/bin/env /bin/bash

# TODO change here, if you prefer firefox over chromium
main:	open_chromium run

run:
	FLASK_APP=start_ui.py flask run --host=0.0.0.0 --port=9999

debug:
	export FLASK_DEBUG=1
	FLASK_APP=start_ui.py flask run --host=0.0.0.0 --port=9999

# Open the page in various browser
open_firefox:
	firefox http://0.0.0.0:9999/ &

open_chromium:
	chromium-browser http://0.0.0.0:9999/ &

open_macosx:
	open http://0.0.0.0:9999/ &

# Test and install the .desktop file
desktop-file-validate:
	desktop-file-validate GMusicBrowser-FullScreen-WebApp.desktop

desktop-file-install:
	sudo desktop-file-install GMusicBrowser-FullScreen-WebApp.desktop

# Test
test_start:
	./update_ui.py start "Titre de la chanson" "Artiste de la chanson" "Album de la chanson" "Année : 2018" "Disque 1" "1" "test.mp3" "test.jpg"

test_stop:
	./update_ui.py stop "Titre de la chanson" "Artiste de la chanson" "Album de la chanson" "Année : 2018" "Disque 1" "1" "test.mp3" "test.jpg"

clean:
	-rm -vfr __pycache__/ *.pyc

send:	send_zamok
send_zamok:
	CP --exclude=.git ./ ${Szam}publis/GMusicBrowser-FullScreen-WebApp.git/
