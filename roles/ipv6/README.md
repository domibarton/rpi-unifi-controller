ipv6
====

This role disables IPv6.

If you don't want to disable IPv6 you've two options:

* don't run this role
* overwrite the variable `ipv6_disable` (see below)

Requirements
------------

None.

Role Variables
--------------

If you want to leave IPv6 enabled you've to overwrite the following role variable:

```yaml
ipv6_disable: yes
```

Dependencies
------------

None.

Example Playbook
----------------

```yaml
---
    - hosts: all
      roles:
         - ipv6
```

License
-------

MIT

Author Information
------------------

* confirm IT solutions, Dominique Barton
