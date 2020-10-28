all:
	ansible-playbook -b run.yaml --vault-password-file .vault-password

test:
	ansible-playbook -b run.yaml --vault-password-file .vault-password --check

bastion:
	ansible-playbook -b run.yaml --limit bastion --vault-password-file .vault-password

ubuntu:
	ansible-playbook -b run.yaml --limit ubuntu --vault-password-file .vault-password

update:
	ansible-playbook update.yaml --limit servers --vault-password-file .vault-password

install:
	ansible-galaxy install -r requirements.yaml && ansible-galaxy collection install -r requirements.yaml

forceinstall:
	ansible-galaxy install -r requirements.yaml --force

decrypt:
	ansible-vault decrypt --vault-password-file .vault-password vars/vault.yaml

encrypt:
	ansible-vault encrypt --vault-password-file .vault-password vars/vault.yaml

lint:
	ansible-lint *.yaml

# cloud:
# 	cd terraform/cloud; terraform apply

# cloud-destroy:
# 	cd terraform/cloud; terraform destroy

gitinit:
	@./git-init.sh
	@echo "ansible vault pre-commit hook installed"
	@echo "don't forget to create a .vault-password too"
