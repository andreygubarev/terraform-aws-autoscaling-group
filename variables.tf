variable "name" {
  type        = string
  description = "Name of the resources"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the resources"
  default     = {}
}

locals {
  tags = merge(
    var.tags,
    {
      "ManagedBy" = "Terraform"
    },
  )
}

################################################################################
# AWS
################################################################################

variable "aws_region" {
  type        = string
  description = "AWS region to deploy the resources"
}
variable "aws_profile" {
  type        = string
  description = "AWS profile to use"
}

################################################################################
# Network
################################################################################

variable "network_vpc" {
  type        = string
  description = "VPC ID to allocate the resources"
}

variable "network_subnets" {
  type        = list(string)
  description = "Subnet IDs to allocate the resources"
}

variable "network_security_groups" {
  type        = list(string)
  description = "Security Group IDs to attach to the EC2 instances"
}

################################################################################
# Instance
################################################################################

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "instance_ami" {
  type        = string
  description = "EC2 instance image ID"
}

variable "instance_ami_owner" {
  type        = string
  description = "EC2 instance image owner"
}

variable "instance_user_data" {
  type        = string
  description = "EC2 instance user data"
  default     = ""
}

variable "instance_profile_policies" {
  type        = list(string)
  description = "EC2 instance profile policies"
  default     = []
}

variable "instance_keypair_algoirthm" {
  type        = string
  description = "EC2 instance keypair algorithm"
  default     = "ED25519"
}

################################################################################
# Volume
################################################################################

variable "volume_type" {
  type        = string
  description = "EC2 volume type"
  default     = "gp3"
}

variable "volume_size" {
  type        = string
  description = "EC2 volume size"
  default     = 32
}

################################################################################
# Group
################################################################################

variable "group_capacity_min" {
  type        = string
  description = "Minimum number of instances in the autoscaling group"
}

variable "group_capacity_max" {
  type        = string
  description = "Maximum number of instances in the autoscaling group"
}

variable "group_timeout_cooldown" {
  type        = string
  description = "Cooldown period in seconds"
  default     = 60
}

variable "group_timeout_grace_period" {
  type        = string
  description = "Grace period in seconds"
  default     = 60
}

variable "group_timeout_heartbeat" {
  type        = string
  description = "Cloud-init heartbeat timeout in seconds"
  default     = 120
}

variable "group_instance_refresh" {
  type        = bool
  description = "Enable instance refresh"
  default     = false
}
