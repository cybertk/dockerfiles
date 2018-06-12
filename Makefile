BUILD_OPTS := 
DOCKER_BUILD := docker build $(BUILD_OPTS)

remarker:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

socat:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

markdown-pdf:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

.PHONY: remarker markdown-pdf socat
