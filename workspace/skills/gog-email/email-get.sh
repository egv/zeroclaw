#!/bin/bash
# Get full email by message ID
set -e

HOST="bezalel"
PASSWORD="my-secret-password"

MSG_ID="$1"
if [ -z "$MSG_ID" ]; then
    echo '{"error": "Message ID required"}' >&2
    exit 1
fi

ssh "$HOST" "GOG_KEYRING_PASSWORD=$PASSWORD gog gmail get '$MSG_ID' -j --results-only --format=full"
