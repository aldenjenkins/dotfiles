#!/bin/env python

import os
import random
import sys

from typing import Union


def build_img_path_from_root(root: str,
                             file_name: str,
                             dirs: list = None) -> str:
    return root + '/' + '/'.join(dirs) + file_name


def get_random_img_from_dir(directory: str) -> str:
    full_image_paths = []
    for root, dirs, files in os.walk(directory):
        full_image_paths.extend([
            build_img_path_from_root(root, file, dirs)
            for file in files
        ])
    return random.choice(full_image_paths)


if __name__ == "__main__":
    wallpaper_dir = str(sys.argv[1])
    abs_img_path = get_random_img_from_dir(wallpaper_dir).replace("(", "\\(").replace(")", "\\)")
    os.system(f'wal -i {abs_img_path}')

