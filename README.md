# elixir-ide
This project is an attempt to create a portable Elixir development environment distributed as a container image and based on terminal tools for coding. It's mostly an excuse to learn on automation and Ansible in particular.

Inspiration came from a blog post in Medium.

> [Docker as an Integrated Development Environment](https://medium.com/@ls12styler/docker-as-an-integrated-development-environment-95bc9b01d2c1)
>
> Building a portable IDE to run anywhere (as long as you’ve got Docker)

### Container characteristics
- Arch Linux based
- Includes all necessary tools for development
- Meant to be long-lived (stop/start)
- Codebase shared by host (bind mount)

### Project guidelines
- Build a container image in a CI environment
- Use [buildah](https://github.com/containers/buildah) to create the image
- Store it on a [Docker Hub](https://hub.docker.com/) repository
- Automate the whole process with [Ansible](https://github.com/ansible/ansible)

## Actions on the host

### Rootless containers
Users running them will need a range of UIDs listed in `/etc/subuid` and `/etc/subgid` files.

More information:
- https://www.redhat.com/sysadmin/rootless-podman-makes-sense
- https://docs.docker.com/engine/security/userns-remap/

### Powerline Symbols on terminal
Fancy Oh My Zsh themes customize the terminal prompt with these symbols, so a patched font must be installed to see them.
