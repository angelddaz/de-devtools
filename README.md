# ansible
This project's main focus is the development of single laptop/workstation configuration.
Tool stack installation automation is currently (2020/03) going to be focused on the following tools:
* Python
* AWS
* Airflow
* PostgreSQL

## Running this playbook
```bash
sudo ansible-pull -U https://github.com/angelddaz/ansible.git 
```

## Necessary Configurations
1. Password-less sudo
```bash
#  ALL=(ALL:ALL) ALL ->  ALL=(ALL:ALL) NOPASSWD: ALL
sudo visudo
```

