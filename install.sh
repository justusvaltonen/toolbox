#!/usr/bin/env bash
# toolbox-install — Add ~/toolbox/* to PATH permanently

set -euo pipefail

TOOLBOX_DIR="$HOME/toolbox"
SHELL_RC=""

case "$SHELL" in
    */zsh) SHELL_RC="$HOME/.zshrc" ;;
    */bash) SHELL_RC="$HOME/.bashrc" ;;
    *) echo "Unknown shell: $SHELL — add manually to your shell RC" >&2; exit 1 ;;
esac

PATH_LINE='export PATH="$HOME/toolbox/transfer:$PATH"'

if grep -qF "$PATH_LINE" "$SHELL_RC" 2>/dev/null; then
    echo "Already in $SHELL_RC"
else
    echo "" >> "$SHELL_RC"
    echo "# Toolbox scripts" >> "$SHELL_RC"
    echo "$PATH_LINE" >> "$SHELL_RC"
    echo "Added to $SHELL_RC — restart shell or run: source $SHELL_RC"
fi

echo "Available tools:"
for f in "$TOOLBOX_DIR"/*/; do
    [[ -d "$f" ]] && echo "  $(basename "$f")"
done