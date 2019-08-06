## Makefile to build a Chocolatey package with chocomilk

## CUSTOMISATION ###############################################################
#

# Ansible playbook repository which contains the playbook referenced
ANSIBLE_PLAYBOOK_REPO ?= https://github.com/itigoag/chocomilk.git

# Ansible before provision playbook
ANSIBLE_PLAYBOOK_BEFORE ?= chocomilk/before.yml

# Ansible provision playbook
ANSIBLE_PLAYBOOK ?= chocomilk/play.yml

.PHONY: all

all: clone \
    hosts \
	travis \
	play

before: clone \
    hosts \
	travis

clone: 
	@git clone $(ANSIBLE_PLAYBOOK_REPO) chocomilk 2>&1

hosts: 
	@echo "travis-ci" > hosts

travis: 
	ansible-playbook $(ANSIBLE_PLAYBOOK_BEFORE) -i hosts

play:
	ansible-playbook $(ANSIBLE_PLAYBOOK) -i hosts

debug:
	ansible-playbook $(ANSIBLE_PLAYBOOK) -i hosts -vvvvv
