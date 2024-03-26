output "eks-endpoint" {
  value = aws_eks_cluster.k8s.endpoint
}

output "kubeconf-ßca-data" {
  value = aws_eks_cluster.k8s.certificate_authority[0].data
}
