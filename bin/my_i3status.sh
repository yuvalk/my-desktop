#!/bin/sh
# shell script to prepend i3status with more stuff

update_language() {
    xset=$(xset -q|grep LED| awk '{ print $10 }')
    lang=${xset:4:1}

    case "$lang" in
        "0") KBD="EN" ;;
        "1") KBD="HE" ;;
        *) KBD="unknown" ;;
    esac
}

i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && update_language && while :
do
  read line
  update_language
  first_vpn=$(nmcli con | grep -i vpn | head -n 1 | awk '{ print $1 }')
  echo ",[{\"full_text\":\"${KBD}\" },{\"full_text\":\"VPN: ${first_vpn}\" },${line#,\[}" || exit 1
done)

