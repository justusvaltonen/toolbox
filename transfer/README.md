# Transfer Toolbox

CLI wrappers for file-transfer services — no accounts, no APIs, just `curl` + `jq`.

## Tools

| Script | Service | Free Tier |
|--------|---------|-----------|
| `transfer.sh` | transfer.sh (up to 10 GB, 14 days) | 10 GB, 14 days |
| `swiss-transfer` | swiss-transfer.ch (up to 10 GB, 30 days) | 10 GB, 30 days |
| `gofile` | gofile.io (unlimited, no expiry) | Unlimited |

## Usage

```bash
# transfer.sh (simple, no password)
transfer.sh myfile.zip
# https://transfer.sh/abc123/myfile.zip

# swiss-transfer (end-to-end encrypted, optional password)
swiss-transfer upload secret.zip --password mypass
# https://www.swiss-transfer.ch/download/abc123-def456
# Password: mypass

swiss-transfer download abc123-def456
swiss-transfer download abc123-def456 myfile.zip

# gofile.io (unlimited, no expiry, no account needed)
gofile myfile.zip
# https://gofile.io/d/abc123
```

## Install

```bash
# Add to PATH (add to ~/.bashrc or ~/.zshrc)
export PATH="$HOME/toolbox/transfer:$PATH"

# Verify
transfer.sh --help
swiss-transfer help
gofile --help
```

## Requirements

- `curl`
- `jq` (for swiss-transfer)

```bash
sudo apt install curl jq  # Debian/Ubuntu
```

## Notes

- **transfer.sh**: Currently experiencing connectivity issues (server unreachable)
- **swiss-transfer**: Domain doesn't resolve (service may be discontinued)
- **gofile.io**: Working reliably, no size limits, no expiry