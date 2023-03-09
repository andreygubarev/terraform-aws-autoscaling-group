variable "name" { type = string }
variable "tags" { type = map(string) }

################################################################################
# AWS
################################################################################

variable "aws_region" { type = string }
variable "aws_profile" { type = string }

################################################################################
# Network
################################################################################

variable "network_vpc" { type = string }
variable "network_subnets" { type = list(string) }
variable "network_security_groups" { type = list(string) }

################################################################################
# Instance
################################################################################

variable "instance_type" { type = string }
variable "instance_image_id" { type = string }
variable "instance_image_owner" { type = string }
variable "instance_user_data" {
  type    = string
  default = ""
}

variable "instance_profile_policies" {
  type    = list(string)
  default = []
}

variable "instance_keypair_algoirthm" {
  type    = string
  default = "ED25519"
}

################################################################################
# Volume
################################################################################

variable "volume_type" {
  type    = string
  default = "gp3"
}

variable "volume_size" {
  type    = string
  default = "32"
}

################################################################################
# Group
################################################################################

variable "group_capacity_min" {
  type = string
}

variable "group_capacity_max" {
  type = string
}

variable "group_timeout_cooldown" {
  type    = string
  default = 60
}

variable "group_timeout_grace_period" {
  type    = string
  default = 60
}

variable "group_timeout_heartbeat" {
  type    = string
  default = 120
}

variable "group_instance_refresh" {
  type    = bool
  default = false
}
