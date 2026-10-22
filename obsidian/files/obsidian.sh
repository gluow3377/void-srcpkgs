#!/bin/sh
# Extra command line flags for Obsidian, separated by spaces or newlines.
# Lines starting with # are ignored.
flags_file="${XDG_CONFIG_HOME:-$HOME/.config}/obsidian/user-flags.conf"

if [ -r "$flags_file" ]; then
	set -f
	# shellcheck disable=SC2046
	set -- $(grep -v '^[[:space:]]*#' "$flags_file") "$@"
	set +f
fi

exec /usr/lib/obsidian/obsidian "$@"
