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
img-8.0-16.x: set-dotnet-8.0 set-nodejs-16.x img-core
img-8.0-18.x: set-dotnet-8.0 set-nodejs-18.x img-core
img-8.0-20.x: set-dotnet-8.0 set-nodejs-20.x img-core

push-5.0-20.x: set-dotnet-5.0 set-nodejs-20.x push-core
push-6.0-20.x: set-dotnet-6.0 set-nodejs-20.x push-core
push-7.0-20.x: set-dotnet-7.0 set-nodejs-20.x push-core
push-8.0-16.x: set-dotnet-8.0 set-nodejs-16.x push-core
push-8.0-18.x: set-dotnet-8.0 set-nodejs-18.x push-core
push-8.0-20.x: set-dotnet-8.0 set-nodejs-20.x push-core

# 20250811
img-7.0-21.x: set-dotnet-7.0 set-nodejs-21.x img-core
img-7.0-22.x: set-dotnet-7.0 set-nodejs-22.x img-core
img-7.0-23.x: set-dotnet-7.0 set-nodejs-23.x img-core
img-7.0-24.x: set-dotnet-7.0 set-nodejs-24.x img-core
push-7.0-21.x: set-dotnet-7.0 set-nodejs-21.x push-core
push-7.0-22.x: set-dotnet-7.0 set-nodejs-22.x push-core
push-7.0-23.x: set-dotnet-7.0 set-nodejs-23.x push-core
push-7.0-24.x: set-dotnet-7.0 set-nodejs-24.x push-core

img-8.0-21.x: set-dotnet-8.0 set-nodejs-21.x img-core
img-8.0-22.x: set-dotnet-8.0 set-nodejs-22.x img-core
img-8.0-23.x: set-dotnet-8.0 set-nodejs-23.x img-core
img-8.0-24.x: set-dotnet-8.0 set-nodejs-24.x img-core
push-8.0-21.x: set-dotnet-8.0 set-nodejs-21.x push-core
push-8.0-22.x: set-dotnet-8.0 set-nodejs-22.x push-core
push-8.0-23.x: set-dotnet-8.0 set-nodejs-23.x push-core
push-8.0-24.x: set-dotnet-8.0 set-nodejs-24.x push-core

img-9.0-16.x: set-dotnet-9.0 set-nodejs-16.x img-core
img-9.0-18.x: set-dotnet-9.0 set-nodejs-18.x img-core
img-9.0-20.x: set-dotnet-9.0 set-nodejs-20.x img-core
img-9.0-21.x: set-dotnet-9.0 set-nodejs-21.x img-core
img-9.0-22.x: set-dotnet-9.0 set-nodejs-22.x img-core
img-9.0-23.x: set-dotnet-9.0 set-nodejs-23.x img-core
img-9.0-24.x: set-dotnet-9.0 set-nodejs-24.x img-core
push-9.0-16.x: set-dotnet-9.0 set-nodejs-16.x push-core
push-9.0-18.x: set-dotnet-9.0 set-nodejs-18.x push-core
push-9.0-20.x: set-dotnet-9.0 set-nodejs-20.x push-core
push-9.0-21.x: set-dotnet-9.0 set-nodejs-21.x push-core
push-9.0-22.x: set-dotnet-9.0 set-nodejs-22.x push-core
push-9.0-23.x: set-dotnet-9.0 set-nodejs-23.x push-core
push-9.0-24.x: set-dotnet-9.0 set-nodejs-24.x push-core


set-dotnet-5.0:
	$(eval DOTNET_VERSION := "5.0")
set-dotnet-6.0:
	$(eval DOTNET_VERSION := "6.0")
set-dotnet-7.0:
	$(eval DOTNET_VERSION := "7.0")
set-dotnet-8.0:
	$(eval DOTNET_VERSION := "8.0")
set-dotnet-9.0:
	$(eval DOTNET_VERSION := "9.0")

set-nodejs-16.x:
	$(eval NODE_VERSION := "16.x")
set-nodejs-18.x:
	$(eval NODE_VERSION := "18.x")
set-nodejs-19.x:
	$(eval NODE_VERSION := "19.x")
set-nodejs-20.x:
	$(eval NODE_VERSION := "20.x")
set-nodejs-21.x:
	$(eval NODE_VERSION := "21.x")
set-nodejs-22.x:
	$(eval NODE_VERSION := "22.x")
set-nodejs-23.x:
	$(eval NODE_VERSION := "23.x")
set-nodejs-24.x:
	$(eval NODE_VERSION := "24.x")