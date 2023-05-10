remote_state {
  backend = "s3"
  config = {
    bucket         = "xxxx-terraform-state"
    key            = "vpc/${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }

  generate = {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
// Don't add your custom provider here, it's better to create a '*_provider.tf' in your module with the configuration
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = "~> 1.4"
}

provider "aws" {
  region = var.region
}
EOF
}

inputs = {
  # replace this with your own prefix
  prefix = "xxxx"
  cidr = "10.0.0.0/16"
}
