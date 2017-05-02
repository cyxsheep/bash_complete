#!/bin/sh

### Check for Bash
if [ -z "$BASH_VERSION" ]; then
	return
fi

### Check for correct version of Bash (use \< instead of -lt because of 2.05b)
if [ \( "${BASH_VERSINFO[0]}" -eq 2 -a "${BASH_VERSINFO[1]}" \< 05 \) -o "${BASH_VERSINFO[0]}" -lt 2 ]; then
	return
fi

### Source Bash completions
if [ -r "/etc/bash_completion" ]; then
	source "/etc/bash_completion"
fi
