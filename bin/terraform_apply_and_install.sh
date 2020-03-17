#!/bin/bash

terraform apply -var-file=etc/bluedata_infra.tfvars -var="client_cidr_block=$(curl -s http://ifconfig.me/ip)/32" -auto-approve=true && \
sleep 60 && \
terraform output -json > generated/output.json && \
./scripts/bluedata_install.sh

