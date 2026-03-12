variable "aws_region" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
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
