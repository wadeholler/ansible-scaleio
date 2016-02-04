ANSIBLE_FLAGS=-u root -i hosts -e "ansible_python_interpreter=/usr/bin/python"


.PHONY:
all:
	 ansible-playbook $(ANSIBLE_FLAGS)  site.yml 
