FROM ubuntu:18.04
RUN apt-get update && apt-get install -y software-properties-common git
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt-get install -y ansible

RUN git clone https://github.com/angelddaz/ansible /home/ansible 
RUN ansible-playbook /home/ansible/main.yml
