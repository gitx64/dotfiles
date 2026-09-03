#!/usr/bin/env bash
exec kitty

if [ ! command -v tmux &>/dev/null ]; then
	echo "tmux not found";
	exit 1
fi

if tmux has-session -t main 2>/dev/null; then
	tmux attach-session -t main
else
	tmux new-session -d -s main
	tmux attach-session -t main
fi
