unifi
=====

This role installs and configures the UniFi controller.

Requirements
------------

None.

Role Variables
--------------

The UniFi controller uses Java and therefore the java home is set by default to:

```yaml
unifi_java_home: /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt
```

The maximum java heap size is set to a high value which is not within the Raspberry Pi's memory limits.
Therefore the heap size is calculated automatically:

```yaml
unifi_memory_limit: '{{ ansible_memtotal_mb - 128 }}M'
```

Dependencies
------------

* apt
* java8
* systemd

Example Playbook
----------------

```yaml
---
    - hosts: all
      roles:
         - unifi
```

License
-------

MIT

Author Information
------------------

* confirm IT solutions, Dominique Barton
