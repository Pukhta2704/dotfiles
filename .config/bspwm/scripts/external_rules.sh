#!/bin/sh

id="${1?}" \
instance="$3" \
class="$2";

case "$class" in
    (Xfce4-terminal)
        #echo "desktop=^1 follow=on";;
	;;
    ("firefox")
        echo "desktop=^2 follow=on";;
    ("Postman")
        echo "desktop=^3 follow=on";;
    ("MongoDB Compass")
        echo "desktop=^3 follow=on";;
    ("Pystopwatch")
        echo "desktop=^5 follow=on";;
    ("Klavaro")
        echo "desktop=^4 follow=on state=floating";;
    ("Sxiv")
        echo "follow=on";;
    ("Zathura")
        echo "follow=on state=tiled";;
    ("")
        unset -v _NET_WM_PID;
        . /dev/fd/0 2>/dev/null <<IN
        : \"\${$(
            xprop \
                -id "$id" \
                -notype \
                -f _NET_WM_PID 32c '=$0' \
                _NET_WM_PID;
        )}\";
IN
        case "$(ps -p "${_NET_WM_PID:?}" -o comm= 2>/dev/null)" in
            ("spotify")
                echo desktop=^5 follow=on;;
        esac;;
    (*)
        echo "desktop=^4 follow=on";;
esac
