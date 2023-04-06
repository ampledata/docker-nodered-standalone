build:
	./docker-debian.sh

run:
	docker run \
		-it \
		-p 1880:1880 \
		--name dnrs-instance \
		testing:node-red-build

inspect:
	docker inspect testing:node-red-build

buildx:
	docker buildx create use dnrs-builder
	docker buildx use dnrs-builder