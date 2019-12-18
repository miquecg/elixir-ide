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
image: barbaz
path_to_bootstrap: "{{ playbook_dir }}/archlinux-bootstrap.tar.gz"
registry:
  name: docker.io
  user: "{{ lookup('env', 'REGISTRY_USER') }}"
  token: "{{ lookup('env', 'REGISTRY_TOKEN') }}"
```

### facts
This role sets two facts during execution.

**`tarball_result`**

Registers the task result of downloading the tarball. It has the corresponding release date under the key `release`.

**`working_container`**

ID of the container that was created. This value is dynamic to avoid collisions with any other container in the environment (e.g. previously created by this role).

License
-------

See [LICENSE](https://github.com/miquecg/elixir-ide/blob/master/LICENSE).
