#!/usr/bin/env bash
# transfer.sh CLI wrapper — simple file uploads to transfer.sh
# Usage: transfer.sh <file> [--days N] [--delete-after-downloads N]

set -euo pipefail

usage() {
    cat <<'EOF'
transfer.sh — Quick file sharing via transfer.sh

Usage:
  transfer.sh <file> [--days N] [--delete-after-downloads N]
  transfer.sh help

Options:
  --days N                  Retention days (default: 14, max: 14)
  --delete-after-downloads N  Delete after N downloads (default: unlimited)

Examples:
  transfer.sh myfile.zip
  transfer.sh big.zip --days 7
  transfer.sh secret.zip --delete-after-downloads 1

Output: Direct download URL (valid for N days)
EOF
}

[[ "${1:-}" == "help" || "${1:-}" == "--help" || "${1:-}" == "-h" ]] && { usage; exit 0; }

file="${1:-}"
[[ -z "$file" ]] && { usage; exit 1; }
[[ -f "$file" ]] || { echo "File not found: $file" >&2; exit 1; }

days=14
delete_after=0
shift
while [[ $# -gt 0 ]]; do
    case "$1" in
        --days) days="$2"; shift 2 ;;
        --delete-after-downloads) delete_after="$2"; shift 2 ;;
        *) echo "Unknown option: $1" >&2; exit 1 ;;
    esac
done

name=$(basename "$file")
echo "Uploading $name..." >&2

args=(-H "Max-Days: $days")
(( delete_after > 0 )) && args+=(-H "Max-Downloads: $delete_after")

url=$(curl -s --progress-bar --upload-file "$file" "${args[@]}" "https://transfer.sh/$name")
echo "$url"