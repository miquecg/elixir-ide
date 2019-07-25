# elixir-ide
This project is an attempt to create a portable Elixir development environment distributed as a container image and aimed towards usage of terminal tools for editing. It's also an important goal to achieve a high degree of automation during the whole lifecycle of the environment.

Inspiration came from a [blog post in Medium](https://medium.com/@ls12styler/docker-as-an-integrated-development-environment-95bc9b01d2c1).

> **Docker as an Integrated Development Environment**
>
> Building a portable IDE to run anywhere (as long as you’ve got Docker)

### Characteristics

- System container based on Arch Linux
- Includes all necessary packages and configurations (git, ssh keys, vim with plugins, tmux...)
- Meant to be long-lived
- Working codebase is shared from host via volumes

### Guidelines
- Automate tasks with [Ansible](https://github.com/ansible/ansible) as much as possible
- Use [buildah](https://github.com/containers/buildah) to create an OCI image
- Publish the image to a registry ([Quay](https://quay.io/), [Docker Hub](https://hub.docker.com/))
- Automate local setup and package upgrades

## Questions
Mostly for myself.

#### Do I need Ansible in the local machine?
Yes if you also want to automate package upgrades on the container or any other maintenance task, but not required.

#### How does Ansible connect to a container?
https://docs.ansible.com/ansible/latest/plugins/connection.html

#### What about container runtimes?
You need one of those on you local machine, for sure. There are several alternatives to choose from that are suitable for system containers: LXC/LXD, OpenVZ or runC. The latter is the reference runtime implementation from the Open Container Initiative and other tools are based on it (e.g. [Docker since version 1.11.0](https://github.com/rkt/rkt/blob/master/Documentation/rkt-vs-other-projects.md#process-model)\).

> OCI develops runC, a container runtime that implements their specification and serves as a basis for other higher-level tools. [1]

#### How to manage secrets?
ansible-vault in combination with the CI service can be good enough.

---

[1] https://en.wikipedia.org/wiki/Open_Container_Initiative
