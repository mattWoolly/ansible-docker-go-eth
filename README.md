# ansible-docker-go-eth
### Ansible playbook to run go-eth inside Docker container
* Playbook pulls latest official ethereum/client-go image from DockerHub 
* `ansible-playbook main.yml` 
### Travis CI builds occur upon push to Master
1. Travis CI spins up a Docker container. Currently just uses Ubuntu Xenial.
2. The main.yml Ansible playbook is run inside that Docker container.
3. The Ansible playbook calls docker_container to spin up another Docker container based on the ethereum/client-go image from DockerHub. 
4. .travis.yml is set up so this second Docker container is actually a sibling container of the original, rather than a messy docker-in-docker setup.
