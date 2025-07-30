#!/bin/bash

sudo wget -N -P /var/lib/marzban/templates/subscription/ https://raw.githubusercontent.com/trbsami/atlas-sub/main/src/marzban/fa/index.html

ENV_FILE="/opt/marzban/.env"
LINE1='CUSTOM_TEMPLATES_DIRECTORY="/var/lib/marzban/templates/"'
LINE2='SUBSCRIPTION_PAGE_TEMPLATE="subscription/index.html"'
TO_ADD=""

if ! grep -Fxq "$LINE1" "$ENV_FILE"; then
    TO_ADD+="$LINE1"$'\n'
fi

if ! grep -Fxq "$LINE2" "$ENV_FILE"; then
    TO_ADD+="$LINE2"$'\n'
fi

if [ -n "$TO_ADD" ]; then
    echo "$TO_ADD" | sudo tee -a "$ENV_FILE" > /dev/null
    sudo marzban restart
fi
