BUILD_OPTS := 
DOCKER_BUILD := docker build $(BUILD_OPTS)

patchelf:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .
	docker run -i --rm quanlong/$@ --version

remarker:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

socat:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

markdown-pdf:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

.PHONY: patchelf remarker markdown-pdf socat
