SUBDIRS ?= host router

.DEFAULT_GOAL := start
.PHONY: build start stop rm ls shell

build start stop rm ls:
	@for d in $(SUBDIRS); do $(MAKE) --no-print-directory -C $$d $@; done


