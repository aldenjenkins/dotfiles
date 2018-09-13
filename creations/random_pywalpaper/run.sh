find $HOME/Photos/wallpapers -print | python ~/creations/random_pywalpaper/get_images_only.py | shuf -n 1 | sed 's/^ *//;s/ +$//' | xargs /usr/bin/wal -i
