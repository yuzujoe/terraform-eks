module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "test-vpc"
  cidr = var.vpc_cidr
  azs  = var.azs

  vpc_tags = {
    "kubernetes.io/cluster/${var.cluster}" = "shared"
  }

  #public_subnets
  public_subnets = var.public_subnet
  public_subnet_tags = {
    "kubernetes.io/role/elb"                       = 1
    "kubernetes.io/cluster/${var.cluster}" = "shared"
  }

  #pirvate_subent
  private_subnets = var.private_subnet
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb"              = 1
    "kubernetes.io/cluster/${var.cluster}" = "shared"
  }

  enable_nat_gateway     = true
  single_nat_gateway     = false
  one_nat_gateway_per_az = false
  enable_vpn_gateway     = true
  enable_dns_hostnames   = true
}
