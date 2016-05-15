apt
===

This role will configure `apt`, Debian's package manager.

It will handle the update of the cache and packages itself.
See the variables for more information.

Requirements
------------

None.

Role Variables
--------------

By default the role won't update the package manager's cache, nor the installed packages.
Though you can overwrite that:

```yaml
---
apt_update_cache: False
apt_update_packages: False
```

Dependencies
------------

None.

Example playbook
----------------

```yaml
- hosts: all
  roles:
    - role: apt
      apt_update_cache: True
      apt_update_packages: True
```

License
-------

MIT

Author Information
------------------

* confirm IT solutions, Dominique Barton
