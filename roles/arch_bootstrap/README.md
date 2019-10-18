Arch Linux bootstrap
====================

Role to download latest bootstrap tarball available for Arch Linux.

Requirements
------------



Role Variables
--------------

### defaults

```yaml
base_url: https://archive.archlinux.org/iso
```

### vars
Both are dates formatted as `YYYY.MM.01`, meaning first day on any given month and year.

Default to current and previous month:

```yaml
current_release: "{{ '%Y.%m.01' | strftime }}"
previous_release: "{{ ansible_date_time.date | to_datetime('%Y-%m-%d') | to_day_1(month=-1, fmt='%Y.%m.%d') }}"
```

### facts
This role sets a fact called `release` depending on which monthly tarball was downloaded.

Dependencies
------------



Example Playbook
----------------



License
-------

See [LICENSE](https://github.com/miquecg/elixir-ide/blob/master/LICENSE)
