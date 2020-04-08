run:
	docker build -t de-devtools .

container:
	docker run -it de-devtools:latest bash

# drop `airflow` db and user from local posgresql server
clean:
	ansible-playbook ./playbooks/cleanup.yaml

local:
	sudo ansible-playbook ./playbooks/main.yaml
