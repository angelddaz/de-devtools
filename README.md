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

## Running this playbook
```bash
sudo ansible-pull -U https://github.com/angelddaz/ansible.git 
```

### With Docker Compose (Optional / For Testing)
Installing Docker Compose
```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# To install a different version of Compose, substitute 1.25.4 with the version of Compose you want to use.
sudo chmod +x /usr/local/bin/docker-compose
# test the installation
docker-compose --version
```

```bash
# Creating a Docker Container
docker run --name ansible-server -it ubuntu:latest bash
# Starting up the container
docker start -ia ansible-server
```

## Necessary Configurations
1. Password-less sudo
```bash
#  ALL=(ALL:ALL) ALL ->  ALL=(ALL:ALL) NOPASSWD: ALL
sudo visudo
```
