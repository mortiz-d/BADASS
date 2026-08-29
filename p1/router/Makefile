IMAGE     ?= p1/router
CONTAINER_NAME ?= r1
NAME      ?= Dockerfile.router

.DEFAULT_GOAL := start
.PHONY: build start shell stop rm ls

build:
	docker build -f $(NAME) -t $(IMAGE) .

ls:
	@docker ps --filter name=$(CONTAINER_NAME)

start:
	@docker start $(CONTAINER_NAME) 2>/dev/null || { \
	    $(MAKE) --no-print-directory build; \
	    docker run -d --name $(CONTAINER_NAME) --restart unless-stopped \
	        --init --privileged --hostname $(CONTAINER_NAME) $(IMAGE); \
	}

shell: start
	docker exec -it $(CONTAINER_NAME) sh

stop:
	-docker stop $(CONTAINER_NAME)

rm: stop
	-docker rm -f $(CONTAINER_NAME)
