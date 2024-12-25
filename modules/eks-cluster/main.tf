resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnets
  }

  version = var.cluster_version

  tags = {
    Name = var.cluster_name
  }
}

