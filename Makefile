DOTNET_VERSION=
NODE_VERSION=

DOCKER_IMAGE_FULL = "dotnetimages/microsoft-dotnet-core-sdk-nodejs:$(DOTNET_VERSION)_$(NODE_VERSION)"

img-core:
	docker build --build-arg DOTNET_VERSION=$(DOTNET_VERSION) --build-arg NODE_VERSION=$(NODE_VERSION) -f Dockerfile -t $(DOCKER_IMAGE_FULL) . 

push-core:
	docker push $(DOCKER_IMAGE_FULL)

img-5.0-20.x: set-dotnet-5.0 set-nodejs-20.x img-core
img-6.0-20.x: set-dotnet-6.0 set-nodejs-20.x img-core
img-7.0-20.x: set-dotnet-7.0 set-nodejs-20.x img-core

push-5.0-20.x: set-dotnet-5.0 set-nodejs-20.x push-core
push-6.0-20.x: set-dotnet-6.0 set-nodejs-20.x push-core
push-7.0-20.x: set-dotnet-7.0 set-nodejs-20.x push-core

set-dotnet-5.0:
	$(eval DOTNET_VERSION := "5.0")
set-dotnet-6.0:
	$(eval DOTNET_VERSION := "6.0")
set-dotnet-7.0:
	$(eval DOTNET_VERSION := "7.0")

set-nodejs-19.x:
	$(eval NODE_VERSION := "19.x")
set-nodejs-20.x:
	$(eval NODE_VERSION := "20.x")
