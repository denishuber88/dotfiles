#!/usr/bin/env bash

## generate uuid-v4
function uuid() {
	od -x /dev/urandom | head -1 | awk '{OFS="-"; srand($6); sub(/./,"4",$5); sub(/./,substr("89ab",rand()*4,1),$6); print $2$3,$4,$5,$6,$7$8$9}' 
}

## date in utc and iso 8601; without millis
function utc() {
	echo $(date -u +"%y-%m-%dT%H:%M:%SZ")
}

## $1 file to copy
## $2 destination folder without trailing slash
function copy() {
	src_file=$1
	dest_file="$2/$src_file"

	if [ -f "$dest_file" ]; then
		# setup dest directory
		tmp_dir="/tmp/dotfiles"
		mkdir -p "$tmp_dir"

		# backup dest file
		dest_file_bak="$tmp_dir/.tmux.conf.$(utc)"
		if ! cp "$dest_file" "$dest_file_bak" ; then
			echo "failed to back up $dest_file to $dest_file_bak"
			exit 1
		fi

		# replace dest with src file
		cp "$src_file" "$dest_file"
		echo "installed $dest_file and saved previous version to $dest_file_bak"
	else
		cp "$src_file" "$dest_file"
		echo "installed $dest_file"
	fi
}


copy ".tmux.conf" "$HOME"
copy ".bash_alias" "$HOME"
copy ".vimrc" "$HOME"
copy ".zshrc" "$HOME"
