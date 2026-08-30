LOGIN     ?= mortiz
IMAGE     ?= p1/host-$(LOGIN)
NAME	  ?= Dockerfile

.DEFAULT_GOAL := build
.PHONY: build

build:
	docker build -f $(NAME) -t $(IMAGE) .
