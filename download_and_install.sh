sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

sudo apt-get update
sudo apt-get install git

git clone git@github.com:angelddaz/ansible.git /home/ansible/
ansible-playbook /home/ansible/main.yml
