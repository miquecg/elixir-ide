Arch Linux bootstrap
====================

Create an Arch Linux container image from latest bootstrap tarball available.

Requirements
------------

This role uses [`buildah`](https://github.com/containers/buildah/blob/master/install.md), a tool for building OCI images.

Elevated privileges are needed to create root filesystems for containers.

Role Variables
--------------

### defaults

```yaml
archive_url: https://archive.archlinux.org/iso
download_path: "{{ playbook_dir }}"
image: barbaz
registry:
  name: docker.io
  user: "{{ lookup('env', 'REGISTRY_USER') }}"
  token: "{{ lookup('env', 'REGISTRY_TOKEN') }}"
```

### facts
This role sets two facts during execution.

**`bootstrap_release`**

Date formatted as '%Y.%m.01'.

**`working_container`**

ID assigned to the container. It is a dynamic value to avoid collisions with any other existing container in the environment (e.g. previously created by this role).

License
-------

See [LICENSE](https://github.com/miquecg/elixir-ide/blob/master/LICENSE).
