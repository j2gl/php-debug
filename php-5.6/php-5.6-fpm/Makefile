
IMAGE_NAME=j2gl/alpine-php:5.6-dev
CONTAINER_NAME=php-5.6-dev

build:
	docker build -t ${IMAGE_NAME} . 

run: 
	docker run --name ${CONTAINER_NAME} --detach --rm --volume "www:/app" -p 9000:9000 -p 2244:22 ${IMAGE_NAME}

stop:
	docker stop ${CONTAINER_NAME}

remove:
	docker rmi ${IMAGE_NAME}
