# Data Engineering Workstation
This project's main focus is the development of single laptop/workstation configuration.

Tool stack installation automation is currently (2020/03) going to be focused on the following tools:
* Operating System: Ubuntu 18.04 
* Languages
    * Python
    * PostgreSQL
* AWS
    * S3
    * DynamoDB
    * Lambda
* Airflow

Future Tools to Configure:
* Spark
* [dbt](https://www.getdbt.com/)

All tools are open source or free tiers. Reference: https://free-for.dev/#/

## Running This Playbook on your Ubuntu:18.04 machine
Dependencies
```bash
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

Running the playbook to install workstation.
```bash
sudo ansible-pull -U https://github.com/angelddaz/ansible.git 
```

### Docker Commands For Testing
Creating, building, and running a docker container 

```bash
# Creating a Docker Container
docker run --name ansible-server -it ubuntu:18.04 bash
# Building
docker build .
```

### Turning off pw prompt for sudo just for this playbook run
notes on changes made so far:
```bash
#  ALL=(ALL:ALL) ALL ->  ALL=(ALL:ALL) NOPASSWD: ALL
sudo visudo


