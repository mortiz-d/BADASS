LOGIN     ?= mortiz
IMAGE     ?= p1/router-$(LOGIN)
NAME      ?= Dockerfile

.DEFAULT_GOAL := build
.PHONY: build 

build:
	docker build -f $(NAME) -t $(IMAGE) .
