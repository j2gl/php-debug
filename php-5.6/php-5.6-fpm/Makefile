IMAGE_NAME=php-5.6-fpm
VERSION=1.0.0
CONTAINER_NAME=php-5.6

build:
	docker build -t j2gl/${IMAGE_NAME}:${VERSION} . 

push: 
	 docker push j2gl/${IMAGE_NAME}:${VERSION}

run: 
	docker run --name ${CONTAINER_NAME} --detach --rm --volume "www:/app" -p 9000:9000 -p 2244:22 ${IMAGE_NAME}

stop:
	docker stop ${CONTAINER_NAME}

remove:
	docker rmi ${IMAGE_NAME}
