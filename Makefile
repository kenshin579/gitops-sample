REGISTRY 	:= kenshin579
APP    		:= go-server
IMAGE       := $(REGISTRY)/$(APP):v1.0

.PHONY: docker-build
docker-build:
	@docker build -t $(IMAGE) -f Dockerfile .

.PHONY: docker-push
docker-push: docker-build
	@docker push $(IMAGE)
