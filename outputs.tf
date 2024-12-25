output "vpc_id" {
  value = module.networking.vpc_id
}

output "public_subnet_ids" {
  value = module.networking.public_subnet_ids
}

output "eks_cluster_id" {
  value = module.eks_cluster.cluster_id
}

output "kubeconfig" {
  value = module.eks_cluster.kubeconfig
}

output "aws_auth" {
  value = module.eks_cluster.aws_auth
}

output "node_group_id" {
  value = module.node_group.node_group_id
}
