# Terraform Infrastructure

## Pre-requisites
```
brew install tfenv tgenv
tfenv use
tgenv install
```

## Deploying a service

```
cd aws/terraform/services/vpc/lab
terragrunt run-all plan
terragrunt run-all apply
```
