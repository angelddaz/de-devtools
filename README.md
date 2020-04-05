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
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```


The `ansible-pull` is a small script that will checkout a repo of configuration instructions from git, and then run `ansible-playbook` against that content.


Running the playbook to install your Data Engineering tools.
```bash
sudo ansible-pull -U https://github.com/angelddaz/ansible.git 
```

## Testing
Creating and building a docker container.

```bash
# Creating a Docker Container
docker run --name ansible-server -it ubuntu:18.04 bash
# Building
docker build .
```

Following Ansible Syntax best practices with built in linter
```bash
ansible-lint local.yml
```
