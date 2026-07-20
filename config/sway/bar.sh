#!/bin/bash

echo '{"version":1}'
echo '['
echo '[]'

while true; do
    vol_human=$(pamixer --get-volume-human)
    if [ "$vol_human" = "muted" ]; then
        vol="Muted"
    else
        vol="${vol_human%\%}"
    fi

    read -r cpu _ < /proc/loadavg

    ram=$(free -m | awk 'NR==2 {printf "%.2f", $3/1024}')
    
    if [ -f /sys/class/power_supply/BAT0/capacity ]; then
        read -r bat < /sys/class/power_supply/BAT0/capacity
    else
        bat="N/A"
    fi

    printf -v dt '%(%a, %b %d | %H:%M)T' -1

    text=" CPU: $cpu | RAM: ${ram} | Vol: $vol | Bat: ${bat} | $dt "
    echo ",[{\"full_text\":\"$text\"}]"

    sleep 1
done
