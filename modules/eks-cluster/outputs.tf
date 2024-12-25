output "cluster_id" {
  value = aws_eks_cluster.this.id
}

output "kubeconfig" {
  value = aws_eks_cluster.this.endpoint
}

output "aws_auth" {
  value = aws_eks_cluster.this.identity[0].oidc[0].issuer
}
