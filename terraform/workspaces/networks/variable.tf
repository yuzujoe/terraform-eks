variable "vpc_cidr" {
  default = "10.10.0.0/16"
}

variable "azs" {
  default = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
}

variable "public_subnet" {
  default = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}

variable "private_subnet" {
  default = ["10.10.4.0/24", "10.10.5.0/24", "10.10.6.0/24"]
}

variable "cluster" {
  default = "test-cluster"
}
