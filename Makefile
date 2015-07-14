YML := $(wildcard **/*.yml)

.PHONY:
all:
	ansible-playbook -i hosts  site.yml

.PHONY:
debug:
	ansible-playbook -vvvv -i hosts site.yml

.PHONY:
check:
	ansible-playbook -i hosts -vvvvv --syntax-check site.yml	

.PHONY:
test: 
	ansible-playbook -i hosts  site.yml 

$(YML): %.yml
	ansible-playbook -i hosts --syntax-check $<
