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

docker run -it \
	-p 8888:8080 \
	--env-file contrast.env \
	$IMAGE_ID
