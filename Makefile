dev:
	rm -rf .terraform
	terrafile
	terraform init -backend-config /env/backend-dev.tfvars
	terraform apply -auto-approve -var-file /env/dev.tfvars
prod:
	rm -rf .terraform
	terrafile
	terraform init -backend-config /env/backend-prod.tfvars
	terraform apply -auto-approve -var-file /env/prod.tfvars
dev-destroy:
	rm -rf .terraform
	terrafile
	terraform init -backend-config /env/backend-dev.tfvars
	terraform apply -auto-approve -var-file /env/dev.tfvars
prod-destroy:
	rm -rf .terraform
	terrafile
	terraform init -backend-config /env/backend-prod.tfvars
	terraform apply -auto-approve -var-file /env/prod.tfvars

