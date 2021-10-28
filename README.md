Bosun
=====

This role installs a self sufficient Bosun instance including OpenTSDB
using Docker Containers.

[![Build Status](https://github.com/Rheinwerk/ansible-role-bosun_all_in_one/actions/workflows/ci.yml/badge.svg)](https://github.com/Rheinwerk/ansible-role-bosun_all_in_one/actions/workflows/ci.yml)

Requirements
------------

None.

Role Variables
--------------

There are three variables that drive this role: `_bosun`, `RW_APT_CACHE_UPDATE`, and `RW_ENABLE_DOWNLOADS`. `_bosun` is a map that contains all configuration and settings for this role. `RW_APT_CACHE_UPDATE` `RW_ENABLE_DOWNLOADS` may be specified as _extra variables_ on invocation of Ansible in order to force `apt-get update` or download assets from the Internet, respectively. Please see `defaults/main.yml` for details.

Dependencies
------------

This role requires [`docker_ubuntu`](https://galaxy.ansible.com/detail#/role/292).

Example Playbook
----------------

The general contract of this role is to take the variables map `_bosun` from `defaults/main.yml` as a template for your configuration and pass that configuration as a parameter to this role.

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      var:
        DOCKER:
          ...
        BOSUN:
          ...
      roles:
         - { role: bosun, tags: [ 'bosun' ], _docker_install: "{{ DOCKER }}", _bosun: "{{ BOSUN}}" }

License
-------

Please see LICENSE.

Author Information
------------------

Original author is [Lukas Pustina](https://github.com/lukaspustina) as member of the [Rheinwerk](https://github.com/Rheinwerk) project.
