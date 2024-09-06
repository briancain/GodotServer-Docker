GODOT_VERSION?="4.3-stable"

default: build-all

build-all: build-ubuntu

build-ubuntu:
	@docker build . -t godot -f ubuntu.Dockerfile
