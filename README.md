# Data Engineering DevTools
This project's main focus is complete automation of Data Engineering (DE) tool Deployment.

Instead of spending frustrating hours on tool installation and configuration, you can clone this repos and run the attached Ansible playbook. 
This repository lets you to be five commands away from writing ELT code with a modern Data Infrastructure tool stack.

This repository leverages Ansible's Declarative Infrastructure as Code (IaC) to install and configure DE tools.

## Download and Installation
Downloading the playbook to install Data Engineering tools on your server.
```bash
git clone https://github.com/angelddaz/de-devtools ~/de-devtools
# see ./Makefile for make 
cd ~/de-devtools && make local
```
<img src="https://github.com/angelddaz/de-devtools/blob/master/images/20200406screenshot.png" width="70%" height="70%">

### Tool Focus
* Operating System: Ubuntu 18.04 
* Languages
    * Python 3
    * PostgreSQL 10
* Open Source Software
    * Airflow
    * Spark (Work in Progress)
    * dbt (Work in Progress)
* Cloud
    * AWS [S3, DynamoDB, Lambda]

All tools are open source or free tiers. Reference: https://free-for.dev/#/

### Software Dependencies
```bash
sudo apt-get update && apt-get install -y software-properties-common git
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install -y ansible
```
Ubuntu:18.04 Operating System

### PostgreSQL Database Object Conflicts
Make sure you do not have a local Postgres Database and Roles called `airflow`.



## Running Installed Tools After Running ansible-playbook

### Airflow
1. Build the downloaded and configured puckel docker image
```bash
cd ~/de-devtools/docker-airflow
docker build .
```
2. Run a preconfigured container.
LocalExecutor is preconfigured to allow concurrent jobs.
```bash
# still in ~/de-devtools/docker-airflow
docker-compose -f docker-compose-LocalExecutor.yml up -d
```

**(Optional)** Make an alias in your `~/.bashrc` file for easier [CLI](https://airflow.apache.org/docs/stable/cli.html) usage `airflow [subcommand]`: 
* `alias airflow=docker run --rm -it puckel/docker-airflow airflow'
UI here: 
#### * [localhost:8080](http://localhost:8080/)

### Spark
Coming soon!


## Testing
Building a docker image and running a docker container.
```bash
# Creates image
make
# run container on image
make container
```

## Code Format Standards
Following Ansible Syntax best practices with built in linter
```bash
ansible-lint main.yml
```
