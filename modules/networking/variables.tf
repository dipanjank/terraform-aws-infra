variable "name" {
  description = "Name prefix for all resources"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnets with AZs"
  type = list(object({
    az   = string
    cidr = string
  }))
}

variable "private_subnets" {
  description = "List of private subnets with AZs"
  type = list(object({
    az   = string
    cidr = string
  }))
}
