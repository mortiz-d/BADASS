LOGIN	?= mortiz
COUNT	?= 4
IMAGE	?= p3/router-$(LOGIN)
NAME	?= Dockerfile

.DEFAULT_GOAL := build
.PHONY: build 

build:
	for i in $$(seq 1 $(COUNT)); do \
		test -f config/frr/R$$i.conf || { \
			echo "ERROR: needs config/frr/R$$i.conf"; \
			exit 1; \
		}; \
		docker build \
			-f $(NAME) \
			--build-arg ROUTER_ID=$$i \
			-t $(IMAGE)-$$i \
			. ; \
	done

