#!/bin/bash

ansible-galaxy install -r requirements.yml
ansible-playbook test.yml -i inventory $@

