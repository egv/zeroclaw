# Gmail Access via gog

You can access Gmail using the `gog` CLI tool installed on this system.

## Account
- Email: g.evstratov@gmail.com

## Available Commands

**Check unread emails:**
Use the shell tool to run:
```bash
GOG_KEYRING_PASSWORD=my-secret-password gog gmail messages search is:unread -j --results-only --max=20
```

**Search emails:**
```bash
GOG_KEYRING_PASSWORD=my-secret-password gog gmail messages search "YOUR_QUERY" -j --results-only --max=20
```

**Read full email:**
```bash
GOG_KEYRING_PASSWORD=my-secret-password gog gmail get "MESSAGE_ID" -j --results-only --format=full
```

**Send email:**
```bash
GOG_KEYRING_PASSWORD=my-secret-password gog gmail send --to="RECIPIENT" --subject="SUBJECT" --body="BODY"
```

**Mark as read:**
```bash
GOG_KEYRING_PASSWORD=my-secret-password gog gmail thread modify "THREAD_ID" --remove-label UNREAD -j --results-only
```

## Gmail Query Syntax
- `is:unread` - unread emails
- `from:someone@example.com` - from specific sender
- `subject:meeting` - subject contains word
- `after:2026/02/01` - emails after date
- `label:work` - emails with label

## When to use
- User asks about emails or inbox
- User wants to check for new messages
- User asks to send an email
- User references specific email subjects

## Important
- Always confirm before sending emails
- Never send sensitive info without explicit approval
- Use JSON output (-j flag) for structured data
