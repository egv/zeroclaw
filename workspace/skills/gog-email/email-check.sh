#!/bin/bash
# Check emails with optional query
set -e

HOST="bezalel"
PASSWORD="my-secret-password"

# Join all arguments as query
QUERY="$*"
if [ -z "$QUERY" ]; then
    QUERY="is:inbox"
fi

ssh "$HOST" "GOG_KEYRING_PASSWORD=$PASSWORD gog gmail messages search '$QUERY' -j --results-only --max=20"
