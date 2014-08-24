#!/usr/bin/env bash

vader=.vader

if [[ ! -d $vader ]]; then
	git clone https://github.com/junegunn/vader.vim.git $vader
else
	cd $vader
	git pull
	cd ..
fi

vim -Nu <(cat << EOF
filetype off
set rtp+=$vader
set rtp+=.
filetype plugin indent on
EOF) +Vader tests/*.vader