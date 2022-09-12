variable "env" {
  type = string
  default = "dev"
}

variable "instance_types" {
  type = string
  default = "m5.large"
}

variable "node_group_min_size" {
  type = number
  default = 1
}

variable "node_group_max_size" {
  type = number
  default = 5
}

variable "node_group_desired_size" {
  type = number
  default = 3
}

