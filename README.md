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

## Running This Playbook on your Ubuntu machine
Dependencies
```bash
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

Running the playbook
```bash
ansible-pull -U https://github.com/angelddaz/ansible.git
```


```bash
sudo ansible-pull -UK https://github.com/angelddaz/ansible.git 
```

### With Docker Compose (Optional / For Testing)
Creating, building, and running a docker container 

```bash
# Creating a Docker Container
docker run --name ansible-server -it ubuntu:latest bash
# Building
docker build .
# Starting up the container
docker start -ia ansible-server
```


misc

notes on changes made so far:
```bash
#  ALL=(ALL:ALL) ALL ->  ALL=(ALL:ALL) NOPASSWD: ALL
sudo visudo


