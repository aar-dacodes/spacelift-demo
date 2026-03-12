variable "aws_region" {
  type = string
}

variable "vpc_subnets" {
  type = list(string)
}

variable "security_groups" {
  type = list(string)
}

variable "worker_pool_id" {
  type = string
}

variable "worker_pool_config" {
  type      = string
  sensitive = true
}

variable "worker_pool_private_key" {
  type      = string
  sensitive = true
}
