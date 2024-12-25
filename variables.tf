variable "region" {
  description = "The AWS region to deploy resources"
  default     = "sa-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster"
  default     = "1.21"
}

variable "cluster_role_arn" {
  description = "The ARN of the IAM role to use for the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "The name of the node group"
  default     = "my-node-group"
}

variable "desired_capacity" {
  description = "The desired capacity of the node group"
  default     = 2
}

variable "max_capacity" {
  description = "The maximum capacity of the node group"
  default     = 3
}

variable "min_capacity" {
  description = "The minimum capacity of the node group"
  default     = 1
}

variable "instance_type" {
  description = "The EC2 instance type for the node group"
  default     = "t2.micro"
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the node group instances will be deployed"
  type        = list(string)
}
