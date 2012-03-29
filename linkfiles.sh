#!/usr/bin/env bash

script=`basename $0`

for f in `ls ~/.bash`;
do
	if [ $f != $script ];
	then
		ln -sf "${HOME}/.bash/${f}" "${HOME}/.${f}"
	fi
done
