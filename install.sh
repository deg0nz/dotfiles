#!/usr/bin/env bash

## Helper functions

function yes_or_no {
    while true; do
        read -p "$* [y/n]: " yn
        case $yn in
            [Yy]*) return 0  ;;  
            [Nn]*) return 1 ;;
        esac
    done
}

## Entrypoint

cat ./common/banner.txt

echo ""

SYS=$(uname)

case $SYS in
    Linux) echo "Detected Linux" && ./linux/install-linux.sh  ;;
    Darwin) echo "Detected macOS" && ./macos/install-macos.sh ;;
esac

exit 0
