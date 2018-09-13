import sys, re

image_extensions = [
    "png",
    "jpg",
    "gif"
]

def main():
    for line in sys.stdin:
        search = re.search(r'[\s()]', line.strip(), re.M|re.I)
        if not search and line[-4:-1] in image_extensions:
            sys.stdout.write(line.strip("  "))

if __name__ == "__main__":
    main()
