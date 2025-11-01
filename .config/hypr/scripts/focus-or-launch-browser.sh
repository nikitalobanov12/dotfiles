#!/bin/bash

BROWSER_CMD="$1"
BROWSER_CLASS="helium-browser"

if hyprctl clients -j | jq -e ".[] | select(.class == \"$BROWSER_CLASS\")" > /dev/null 2>&1; then
    hyprctl dispatch focuswindow "class:^($BROWSER_CLASS)$"
else
    eval "$BROWSER_CMD"
fi
