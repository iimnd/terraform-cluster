
# create vpc using module 
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "iim-vpc"
  cidr = "10.221.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.221.1.0/24", "10.221.2.0/24"]
  public_subnets  = ["10.221.101.0/24", "10.221.102.0/24"]

  enable_nat_gateway      = true
  enable_vpn_gateway      = false
  map_public_ip_on_launch = true

  tags = {
    Environment = "DEV"
    Managed     = "IAC"
    Managed_by  = "Terraform"
  }
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "~> 19.0"
  cluster_name    = "my-cluster"
  cluster_version = "1.27"

  cluster_endpoint_public_access = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.public_subnets
  control_plane_subnet_ids = module.vpc.public_subnets



  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    # instance_types = ["m6i.large", "m5.large", "m5n.large", "m5zn.large"]
    instance_types = ["t3.large"]
  }

  eks_managed_node_groups = {
    blue = {}
    green = {
      min_size     = 1
      max_size     = 2
      desired_size = 1

      instance_types = ["t3.large"]
      capacity_type  = "SPOT"
    }
  }
}

