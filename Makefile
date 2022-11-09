DOTNET_VERSION=6.0
NODE_VERSION=16.x

DOCKER_IMAGE_FULL = "dotnetimages/microsoft-dotnet-core-sdk-nodej:$(DOTNET_VERSION)_$(NODE_VERSION)"

img:
	docker build --build-arg DOTNET_VERSION=$(DOTNET_VERSION) -f Dockerfile -t $(DOCKER_IMAGE_FULL) . 