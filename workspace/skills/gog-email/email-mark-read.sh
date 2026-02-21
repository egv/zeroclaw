#!/bin/bash
# Mark thread as read
set -e

HOST="bezalel"
PASSWORD="my-secret-password"

THREAD_ID="$1"
if [ -z "$THREAD_ID" ]; then
    echo '{"error": "Thread ID required"}' >&2
    exit 1
fi

ssh "$HOST" "GOG_KEYRING_PASSWORD=$PASSWORD gog gmail thread modify '$THREAD_ID' --remove-label UNREAD -j --results-only"
