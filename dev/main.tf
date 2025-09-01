provider "aws" {
  region = "eu-west-1"
}

module "networking" {
  source   = "../modules/networking"
  name     = "ai-inv-dev"
  region   = "eu-west-1"
  vpc_cidr = "10.0.0.0/16"

  public_subnets = [
    { az = "eu-west-1a", cidr = "10.0.0.0/20" },
    { az = "eu-west-1b", cidr = "10.0.16.0/20" }
  ]

  private_subnets = [
    { az = "eu-west-1a", cidr = "10.0.128.0/20" },
    { az = "eu-west-1b", cidr = "10.0.144.0/20" }
  ]
}
