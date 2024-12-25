provider "aws" {
  region = var.region
}

module "networking" {
  source              = "./modules/networking"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
}

module "eks_cluster" {
  source           = "./modules/eks-cluster"
  cluster_name     = var.cluster_name
  cluster_version  = var.cluster_version
  subnets          = module.networking.public_subnet_ids
  vpc_id           = module.networking.vpc_id
  cluster_role_arn = var.cluster_role_arn
}

module "node_group" {
  source           = "./modules/node-group"
  cluster_name     = var.cluster_name
  node_group_name  = var.node_group_name
  subnet_ids       = module.networking.public_subnet_ids # Updated variable name
  desired_capacity = var.desired_capacity
  max_capacity     = var.max_capacity
  min_capacity     = var.min_capacity
  instance_type    = var.instance_type
}
