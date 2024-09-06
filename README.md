# Godot 4.x Headless Server as a Container

This repository contains a Dockerfile to build a Godot 4.x headless server container.

## Usage

### Build the container

This repo provides a Makefile that will build all Dockerfile containers.

```bash
make
```

### Run the container

To confirm it works, you can run the following commands once you have built
the container.

```bash
docker run godot
```

You can also run that container in something like Amazons ECS or Kubernetes. But
that exercise is left to the reader, for now.

## TODO

Support other platforms:

- [ ] Windows
- [ ] MacOS
- [ ] Android
- [ ] iOS
- [ ] HTML5
- [ ] Non-ubuntu Linux

## References

- https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_dedicated_servers.html
