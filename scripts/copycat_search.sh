#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

PATTERN="$1"

main() {
	pattern=$1
	if [ -n "$pattern" ]; then
		tmux command-prompt -p "copycat search:" "run-shell \"$CURRENT_DIR/copycat_mode_start.sh '$pattern' '%1'\""
	else
		tmux command-prompt -p "copycat search:" "run-shell \"$CURRENT_DIR/copycat_mode_start.sh '%1'\""
	fi
}
main "$PATTERN"
