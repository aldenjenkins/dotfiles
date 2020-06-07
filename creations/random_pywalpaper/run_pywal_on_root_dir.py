#!/bin/env python

import os
import random
import subprocess

from typing import List, Union


def build_img_path_from_root(file_name: str,
                             wallpaper_dir: str) -> str:
    root = wallpaper_dir
    return (root + '/' + file_name)#.replace("(", "\\(").replace(")", "\\)")


def get_absolute_image_path_list(directory: str) -> List[str]:
    full_image_paths = []
    for file in os.listdir(directory):
        full_image_paths.extend([
            build_img_path_from_root(file, directory)
        ])
    return full_image_paths


def get_wallpaper_dir() -> str:
    with open('/tmp/walpaperdir') as f:
        wallpaper_dir = f.readline().strip()
    return '/home/alden/media/photos/wallpapers/' + wallpaper_dir


if __name__ == "__main__":
    wallpaper_dir = get_wallpaper_dir()
    wallpaper_files = get_absolute_image_path_list(wallpaper_dir)
    selected_file = random.choice(wallpaper_files)
    successfully_changed = False
    while not successfully_changed:
        completed_process = subprocess.run(['wal', '-n', '-i', selected_file])
        if completed_process.returncode == 0:
            successfully_changed = True
    subprocess.run(['feh', '--no-fehbg', '--bg-scale', selected_file])
    subprocess.run(['/home/alden/.local/bin/genzathurarc', '2>&1' '/dev/null'])
    subprocess.run(['/home/alden/.local/bin/killdunstandgenrc', '2>&1' '/dev/null'])
    subprocess.run(['notify-send', '-t', '2500', f'Using wallpaper {selected_file}'])
    subprocess.run(['bspc', 'wm', '-r'])

