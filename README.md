# Data Engineering DevTools
This project's main focus is complete automation of Data Engineering tool Deployment.

Instead of spending frustrating hours on tool installation, config, and deployment.
This repos allows you to be five commands away from writing ELT code with a modern Data Infrastructure tool stack.

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

All tools are open source or free tiers. Reference: https://free-for.dev/#/
## Future Tools:
* Spark
* [dbt](https://www.getdbt.com/)

## Running This Playbook on your Ubuntu:18.04 machine
This repository leverages Ansible's Declarative Infrastructure as Code (IaC) to install and deploy DE tools.
Dependencies
```bash
sudo apt-get update && apt-get install -y software-properties-common git
sudo apt-add-repostiroy --yes --update ppa:ansible/ansible
sudo apt-get install -y ansible
```
Downloading the playbook to install your Data Engineering tools.
```bash
git clone https://github.com/angelddaz/ansible ~/de-devtools
ansible-playbook ~/de-devtools/main.yml
```

## Testing
Building a docker image and running a docker container.
```bash
# Creates image
docker build -t ansible .
# run container on image
docker run --rm -it ansible /bin/bash
```

Following Ansible Syntax best practices with built in linter
```bash
ansible-lint main.yml
```
