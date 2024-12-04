VERSION ?= $(version)
PHP_VERSION ?= $(phpversion)

REGISTRY ?= k4mrul

docker-build:
	docker build -t ${REGISTRY}/php${PHP_VERSION}-cli-base:${VERSION} . 

	
docker-push:
	docker push ${REGISTRY}/php${PHP_VERSION}-cli-base:${VERSION} . 
  

