all:	os_base

.PHONY: os_base
os_base:
	tools/do_meta_pull.sh
	tools/do_build_config.sh
	tools/do_build.sh

.PHONY: os_image
os_image:
	tools/do_meta_pull.sh
	tools/do_build_config.sh
	tools/do_build_image.sh

.PHONY: os_sdk
os_sdk:
	tools/do_meta_pull.sh
	tools/do_build_config.sh
	tools/do_build_sdk.sh

.PHONY: os_pull
os_pull:
	tools/do_meta_pull.sh

.PHONY: os_config
os_config:
	tools/do_build_config.sh

.PHONY: os_build
os_build:
	tools/do_build.sh

.PHONY: os_sdk_build
os_sdk_build:
	tools/do_build_sdk.sh

.PHONY: help
help:
	@echo "Make Targets:"
	@echo ""
	@echo " os_pull:     Just pull Trees"
	@echo " os_base:     Images and SDK"
	@echo " os_image:    Images"
	@echo " os_sdk:      SDK"
	@echo ""

