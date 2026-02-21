#!/bin/bash
# Send email
set -e

HOST="bezalel"
PASSWORD="my-secret-password"

# Pass all arguments directly to gog send
ssh "$HOST" "GOG_KEYRING_PASSWORD=$PASSWORD gog gmail send $*"
