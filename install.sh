#!/bin/bash

sudo wget -N -P /var/lib/marzban/templates/subscription/ https://raw.githubusercontent.com/parsarzn/atlas-sub/main/index.html

ENV_FILE="/opt/marzban/.env"
TO_ADD=""

# بررسی وجود خطوط فقط در خطوطی که با # شروع نمی‌شن (یعنی فعال هستن)
if ! grep -E '^\s*[^#]*CUSTOM_TEMPLATES_DIRECTORY\s*=\s*"/var/lib/marzban/templates/"' "$ENV_FILE" > /dev/null; then
    TO_ADD+='CUSTOM_TEMPLATES_DIRECTORY="/var/lib/marzban/templates/"'$'\n'
fi

if ! grep -E '^\s*[^#]*SUBSCRIPTION_PAGE_TEMPLATE\s*=\s*"subscription/index.html"' "$ENV_FILE" > /dev/null; then
    TO_ADD+='SUBSCRIPTION_PAGE_TEMPLATE="subscription/index.html"'$'\n'
fi

if [ -n "$TO_ADD" ]; then
    echo "$TO_ADD" | sudo tee -a "$ENV_FILE" > /dev/null
    sudo marzban restart
fi
