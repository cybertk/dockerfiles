BUILD_OPTS := 
DOCKER_BUILD := docker build $(BUILD_OPTS)
ANDROID_NDK_REVISION := r17b

# example: make android-ndk ANDROID_NDK_REVISION=r17b
android-ndk:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@:$(ANDROID_NDK_REVISION) \
		--build-arg revision=$(ANDROID_NDK_REVISION) .

remarker:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

socat:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

markdown-pdf:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

.PHONY: remarker markdown-pdf socat android-ndk
