#!/usr/bin/env bash
# Symlink these dotfiles into place. Existing files are moved to *.bak.
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$1" dst="$2"
  if [ -L "$dst" ]; then
    rm "$dst"
  elif [ -e "$dst" ]; then
    mv "$dst" "$dst.bak.$(date +%s)"
  fi
  mkdir -p "$(dirname "$dst")"
  ln -s "$src" "$dst"
  echo "$dst -> $src"
}

for d in hypr kitty fastfetch ghostty nvim; do
  link "$DIR/$d" "$HOME/.config/$d"
done
link "$DIR/zsh/.zshrc" "$HOME/.zshrc"
