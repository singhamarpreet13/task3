variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the Ubuntu 24.04"
  type        = string
}

variable "instance_type" {
  description = "Type of instance to launch"
  type        = string
}

variable "key_pair_name" {
  description = "Name of the key pair for SSH access"
  type        = string
}

variable "region" {
  description = "AWS region for bucket creation"
  type        = string
}