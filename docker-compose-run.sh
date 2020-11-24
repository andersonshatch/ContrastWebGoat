#!/usr/bin/env bash

if [[ -f contrast.env ]]
then
	: #continue
else
	echo "Please configure contrast.env from the template contrast.env.tmpl" && exit 1
fi

while true; do
	read -p "Run with Contrast? [Y/N] " yn
	case $yn in
		[Yy]* ) docker-compose --env-file=contrast.env up; break;;
		[Nn]* ) docker-compose up; break;;
	esac
done

