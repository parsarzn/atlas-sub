#!/bin/bash

sudo wget -N -P /var/lib/marzban/templates/subscription/ https://raw.githubusercontent.com/parsarzn/atlas-sub/main/index.html

ENV_FILE="/opt/marzban/.env"
LINE1_PATTERN='^CUSTOM_TEMPLATES_DIRECTORY\s*=\s*"/var/lib/marzban/templates/"$'
LINE2_PATTERN='^SUBSCRIPTION_PAGE_TEMPLATE\s*=\s*"subscription/index.html"$'
TO_ADD=""

if ! grep -Pq "$LINE1_PATTERN" "$ENV_FILE"; then
    TO_ADD+='CUSTOM_TEMPLATES_DIRECTORY="/var/lib/marzban/templates/"'$'\n'
fi

if ! grep -Pq "$LINE2_PATTERN" "$ENV_FILE"; then
    TO_ADD+='SUBSCRIPTION_PAGE_TEMPLATE="subscription/index.html"'$'\n'
fi

if [ -n "$TO_ADD" ]; then
    echo "$TO_ADD" | sudo tee -a "$ENV_FILE" > /dev/null
    sudo marzban restart
fi
