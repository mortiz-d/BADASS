SUBDIRS ?= host router

# GNS3 names its containers GNS3.xxx
GNS3_FILTER ?= GNS3
IMG_FILTER  ?= p1/*

.DEFAULT_GOAL := build
.PHONY: build ls rmi 

ls:
	docker ps --filter name=$(GNS3_FILTER)

build :
	@for d in $(SUBDIRS); do $(MAKE) --no-print-directory -C $$d $@; done
	@docker images | grep p1

rmi:
	@ids=$$(docker images -q --filter reference='$(IMG_FILTER)'); \
	if [ -n "$$ids" ]; then docker rmi -f $$ids; fi

