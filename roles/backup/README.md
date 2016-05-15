rsnapshot
=========

This role installs and configures the backup utility `rsnapshot` and an optional NFS share.

Requirements
------------

None.

Role Variables
--------------

The default backup directory (where backups are stored) can be overwritten with:

```yaml
backup_directory: /mnt/backup
```

There are default retain counters available:

```yaml
backup_retain_hourly: 24
backup_retain_daily: 7
backup_retain_weekly: 4
backup_retain_monthly: 12
```

The list of backup sources is defined by:

```yaml
backup_list:
  - /home/
  - /etc/
  - /usr/local/
  - /var/lib/unifi/

```

If you want to backup to an NFS server set the following variables:

```yaml
# Backup NFS share.
backup_nfs_share: ''
backup_nfs_mount: '{{ backup_directory }}'
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
         - backup
```

License
-------

MIT

Author Information
------------------

* confirm IT solutions, Dominique Barton
