LOGIN	?= mortiz
COUNT	?= 4
IMAGE	?= p3/router-$(LOGIN)
NAME	?= Dockerfile

.DEFAULT_GOAL := build
.PHONY: build 

build:
	for i in $$(seq 1 $(COUNT)); do \
		docker build -f $(NAME) -t $(IMAGE)-$$i .; \
	done

