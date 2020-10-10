#!/usr/bin/env sh

[ -z "$CODE" ] && return 1

case $BLOCK_BUTTON in
    1) notify-send -i git "Repositories" "$(cgs)" ;;
    2) notify-send -i git "Repositories" "$(cgs -ll)" ;;
    3) notify-send -i git "Repositories" "$(cgs -l)" ;;
esac

/usr/bin/cgs | wc -l

