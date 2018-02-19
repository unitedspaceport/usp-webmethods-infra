# AWS provisioning

AWS cloud formation is used to model and manage all aws resources. It enables automated provisioning of all required aws resources like vm's with centos installed, subnetworks, ...

The Cloudformation template: [usp-cloudformation.json](usp-cloudformation.json)

## AWS cli

Within this project, all gui operations are avoided. This to better conform to IaC methodologies. Interaction with AWS is done via aws cli. 

```bash
# Install aws (macOS), other OS see aws docs
brew install awscli

# Configure aws cli provide
#  * Access Key and Scecret Access key 
# 		=> Find via web console > User > Secret credentials > Access keys
#  * Default Region name: eu-central-1
#  * Default output: text
aws configure 

```

## Cloudformation cli

```bash

# Validate template.json in working directory
aws cloudformation validate-template --template-body file://$PWD/template.json

# Create new stack
aws cloudformation create-stack --stack-name cli-test-1 --template-body file://$PWD/template.json --parameters file://$PWD/parameters.json

# Update stack
aws cloudformation update-stack --stack-name cli-test-1 --template-body file://$PWD/template.json --parameters file://$PWD/parameters.json

# Describe stack
aws cloudformation describe-stacks --stack-name cli-test-1 --output json
aws cloudformation describe-stacks --stack-name cli-test-1 --output json| grep "StackStatus"

# Delete stack
aws cloudformation delete-stack --stack-name cli-test-1
```



