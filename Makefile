BUILD_OPTS := 
DOCKER_BUILD := docker build $(BUILD_OPTS)

projects := $(shell git diff origin/master --name-only '*/Dockerfile' | xargs dirname)

remarker:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

socat:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

markdown-pdf:
	cd $@ && $(DOCKER_BUILD) -t quanlong/$@ .

test-only:
	echo 1

test-only-2:
	echo 2

test:
	$(MAKE) $(projects)

deploy:

deploy-to-docker-hub:
	$(foreach p,$(projects), $(shell echo docker push $(p)))

.PHONY: remarker markdown-pdf socat test
