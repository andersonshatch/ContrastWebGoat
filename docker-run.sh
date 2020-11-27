#!/usr/bin/env bash

if [[ -f .image_id ]]
then
	IMAGE_ID=$(<.image_id)
else
	echo "Please run docker-build.sh first" && exit 1
fi

if [[ -f contrast.env ]]
then
    : #continue
else
    echo "Please configure contrast.env from the template contrast.env.tmpl" && exit 1
fi


while true; do
	read -p "Run with Contrast? [Y/N] " yn
	case $yn in
		[Yy]* ) docker run -it -p 8888:8080 --env-file=contrast.env $IMAGE_ID; break;;
		[Nn]* ) docker run -it -p 8888:8080 $IMAGE_ID; break;;
	esac
done
