# Data Engineering Workstation
# Data Engineer's toolkit
This project's main focus is complete automation of the deployment of Data Engineering tools.

Ever have trouble installing Open Source Software? 

With an Ubuntu operating system, you are five commands away from faultless installation of the following Data Engineering tools:

## Tool Focus
* Operating System: Ubuntu 18.04 
* Languages
    * Python
    * PostgreSQL
* AWS
    * S3
    * DynamoDB
    * Lambda
* Airflow

## Future Tools:
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

## Testing
Creating, building, and running a docker container 

```bash
# Creating a Docker Container
docker run --name ansible-server -it ubuntu:18.04 bash
# Building
docker build .
```

