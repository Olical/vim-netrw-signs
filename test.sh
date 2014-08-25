#!/usr/bin/env bash

vader=.vader

if [[ ! -d $vader ]]; then
	git clone https://github.com/junegunn/vader.vim.git $vader
else
	cd $vader
	git pull
	cd ..
fi

vim -Nu <(cat << VIMRC
filetype off
set rtp+=$vader
set rtp+=.
filetype plugin indent on
VIMRC) -c 'Vader! tests/*.vader' > /dev/null