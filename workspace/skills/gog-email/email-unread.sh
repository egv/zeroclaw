#!/bin/bash
# List unread emails
set -e

HOST="bezalel"
PASSWORD="my-secret-password"

ssh "$HOST" "GOG_KEYRING_PASSWORD=$PASSWORD gog gmail messages search is:unread -j --results-only --max=20"
