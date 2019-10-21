Arch Linux bootstrap
====================

Create an Arch Linux container from latest bootstrap tarball available.

Requirements
------------

This role uses [`buildah`](https://github.com/containers/buildah/blob/master/install.md), a tool for building OCI images.

Elevated privileges are needed to create root filesystems for containers.

Role Variables
--------------

### defaults

```yaml
base_url: https://archive.archlinux.org/iso
path_to_bootstrap: "{{ playbook_dir }}/archlinux-bootstrap.tar.gz"
```

### vars
Both are dates formatted as `YYYY.MM.01`, meaning first day on any given month and year.

Default to current and previous month:

```yaml
current_release: "{{ '%Y.%m.01' | strftime }}"
previous_release: "{{ ansible_date_time.date | to_datetime('%Y-%m-%d') | to_day_1(month=-1, fmt='%Y.%m.%d') }}"
```

### facts
This role sets several facts during execution:

**`release`**
It can be either `current_release` or `previous_release`, depending on which monthly tarball was downloaded.

**`working_container`**
ID of the container that was created. This value is dynamic to avoid collisions with any other container in the environment (e.g. previously created by this role).

License
-------

See [LICENSE](https://github.com/miquecg/elixir-ide/blob/master/LICENSE).
