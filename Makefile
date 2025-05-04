
# Variables
IMAGE_NAME = todoist-mcp-server

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: build