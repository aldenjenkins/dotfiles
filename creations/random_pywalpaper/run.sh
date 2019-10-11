DIR="$*"
echo "$DIR"
python /home/alden/creations/random_pywalpaper/run_pywal_on_root_dir.py "$HOME"/Photos/wallpapers/"$DIR" # | shuf -n 1 | sed 's/^ *//;s/ +$//' | xargs /usr/bin/wal -i
