FROM ubuntu:18.04
RUN apt-get update && apt-get install -y software-properties-common git sudo
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt-get install -y ansible

ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache

RUN useradd -ms /bin/bash ubuntu
USER ubuntu
WORKDIR /home/ubuntu
RUN git clone -b dockerfix https://github.com/angelddaz/de-devtools.git /home/ubuntu/de-devtools/
RUN ansible-playbook /home/ubuntu/de-devtools/playbooks/main.yaml -vvv
RUN echo 'root:docker' | chpasswd
