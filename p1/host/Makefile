IMAGE     ?= p1/alpine
CONTAINER_NAME ?= h1
NAME	  ?= Dockerfile.alpine

.DEFAULT_GOAL := start
.PHONY: build start shell stop rm ls

build:
	docker build -f $(NAME) -t $(IMAGE) .

ls:
	@docker ps --filter name=$(CONTAINER_NAME)

start:
	@docker start $(CONTAINER_NAME) 2>/dev/null || { \
	    $(MAKE) --no-print-directory build; \
	    docker run -d --name $(CONTAINER_NAME) --restart unless-stopped --init $(IMAGE); \
	}

shell: start
	docker exec -it $(CONTAINER_NAME) sh

stop:
	-docker stop $(CONTAINER_NAME)

rm: stop
	-docker rm -f $(CONTAINER_NAME)
