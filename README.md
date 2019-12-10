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

## Questions
Mostly for myself.

#### Do I need Ansible in the local machine?
Yes if you also want to automate package upgrades on the container or any other maintenance task, but not required.

#### How does Ansible connect to a container?
https://docs.ansible.com/ansible/latest/plugins/connection.html

#### What about container runtimes?
You need one of those on you local machine, for sure. There are several alternatives to choose from that are suitable for system containers: LXC/LXD, OpenVZ or runC. The latter is the reference runtime implementation from the Open Container Initiative and other tools are based on it (e.g. [Docker since version 1.11.0](https://github.com/rkt/rkt/blob/master/Documentation/rkt-vs-other-projects.md#process-model)\).

> OCI develops runC, a container runtime that implements their specification and serves as a basis for other higher-level tools.
>
> [Wikipedia](https://en.wikipedia.org/wiki/Open_Container_Initiative)
