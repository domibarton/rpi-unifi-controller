pip
===

This role installs the Python package manager - `pip`.

Requirements
------------

* Python

Role Variables
--------------

By default `pip` will not be updated. However, you can overwrite that by setting:

```yaml
pip_update: True
```

Dependencies
------------

* apt

Example Playbook
----------------

```yaml
---
    - hosts: all
      roles:
         - pip
```

License
-------

MIT

Author Information
------------------

* confirm IT solutions, Dominique Barton
