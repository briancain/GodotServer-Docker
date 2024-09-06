# Godot 4.x Headless Server as a Container

This repository contains a Dockerfile to build a Godot 4.x headless server container.
It can be used for running Godot in headless mode as a standalone server for 
things like multiplayer games running in The Cloud :cloud:.

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

Support other runtime platforms:

- [ ] Windows
- [ ] MacOS
- [ ] Non-Ubuntu Linux
    + [ ] CentOS
    + [ ] Your favorite distro here

My preferred deployment operating system is Ubuntu so I plan on mainly
supporting that distro myself.

## References

- https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_dedicated_servers.html
