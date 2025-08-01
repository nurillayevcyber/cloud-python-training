#!/bin/bash

# Run Python scripts
python3 hello.py
python3 control.py
python3 log_readers.py sample.log

# Make all Python files executable and list them
chmod +x *.py
ls -l *.py

# Install required Python packages
pip3 install --user boto3

# Initialize and apply Terraform configuration
terraform init
terraform plan -out=tfplan.out
terraform apply -auto-approve tfplan.out

# Display Terraform output
terraform output instance_ip
