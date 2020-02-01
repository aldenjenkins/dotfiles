[ -f /tmp/walpaperdir ] || echo 'roadtrip' > /tmp/walpaperdir
python /home/alden/src/creations/random_pywalpaper/run_pywal_on_root_dir.py # "$DIR"  | shuf -n 1 | sed 's/^ *//;s/ +$//' | xargs /usr/bin/wal -i
