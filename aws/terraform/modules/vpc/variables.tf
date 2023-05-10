variable "prefix" {
  description = "Name prefix for all services"
}

variable "region" {
  description = "Region to deploy this service in"
  default = "eu-central-1"
}

variable "env" {
  description = "Environment"
}

variable "cidr" {
  description = "CIDR block"
}
