#!/usr/bin/env bash
set -euo pipefail

echo "[context-pro] Removing user-space CDP launchers..."

if [ -d "$HOME/Applications/Antigravity (Context Ring).app" ]; then
  rm -rf "$HOME/Applications/Antigravity (Context Ring).app"
  echo "[context-pro] Removed $HOME/Applications/Antigravity (Context Ring).app"
fi

if [ -f "$HOME/.local/bin/antigravity-ring" ]; then
  rm -f "$HOME/.local/bin/antigravity-ring"
  echo "[context-pro] Removed $HOME/.local/bin/antigravity-ring"
fi

LINUX_DESKTOP="$HOME/.local/share/applications/antigravity.desktop"
if [ -f "$LINUX_DESKTOP" ] && grep -q "Managed by antigravity-context-pro" "$LINUX_DESKTOP"; then
  rm -f "$LINUX_DESKTOP"
  echo "[context-pro] Removed $LINUX_DESKTOP"
fi

echo "[context-pro] Launcher cleanup complete."
