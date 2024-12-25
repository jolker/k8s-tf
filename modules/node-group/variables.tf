variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "The name of the node group"
  type        = string
}

variable "desired_capacity" {
  description = "The desired capacity of the node group"
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "The maximum capacity of the node group"
  type        = number
  default     = 3
}

variable "min_capacity" {
  description = "The minimum capacity of the node group"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "The EC2 instance type for the node group"
  type        = string
  default     = "t2.micro"
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the node group instances will be deployed"
  type        = list(string)
}
