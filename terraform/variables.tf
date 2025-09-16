variable "region" {
  description = "Deploying region for the ami image"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "Deploying region for the ami image"
  default     = "t2.micro"
}

variable "owner_id" {
    description = "owner id"
    type = list
}