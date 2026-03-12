terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "spacelift_workerpool" {
  source = "github.com/spacelift-io/terraform-aws-spacelift-workerpool-on-ec2?ref=v5.5.0"

  worker_pool_id          = var.worker_pool_id
  worker_pool_config      = var.worker_pool_config
  worker_pool_private_key = var.worker_pool_private_key

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  min_size         = 1
  max_size         = 2
  desired_capacity = 1

  instance_type = "t3.small"
}
