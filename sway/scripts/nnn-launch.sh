#!/bin/bash

export NNN_PLUG='f:finder;o:fzopen;p:preview-tui;d:diffs;t:nmount;v:imgview;c:fzcd;b:bulkrename;i:icons'
export NNN_OPTS='i'
export NNN_OPENER="$HOME/.config/nnn/plugins/my-file-opener.sh"
export KITTY_LISTEN_ON="unix:/tmp/mykitty"

kitty --listen-on="$KITTY_LISTEN_ON" -e nnn -a
