variable "my_access_key" {
  type        = string
  description = "Don't look this AK ¬¬"
  default     = "Security Restriction"
}

variable "my_secret_key" {
  type        = string
  description = "Don't look this SK ¬¬"
  default     = "Security Restriction"
}

variable "ami" {
  type        = string
  description = "Don't look this AMI ¬¬"
  default     = "ami-085284d24fe829cd0"
}

variable "vpc_id" {
  type        = string
  description = "VPC id"
  default     = "vpc-0d2831659ef89870c"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = "t2.micro"
}

variable "ssh_key" {
  type        = string
  description = "SSH pem key"
  default     = "josehenao-rampup-key"
}

variable "public_subnet_id" {
  type        = string
  description = "Public Subnet ID"
  default     = "subnet-055c41fce697f9cca"
}

variable "private_subnet_id" {
  type        = string
  description = "Private Subnet ID"
  default     = "subnet-038fa9d9a69d6561e"
}

variable "project" {
  type        = string
  description = "Current Project"
  default     = "ramp-up-devops"
}

variable "responsible" {
  type        = string
  description = "Project Ramp-Up responsible"
  default     = "jose.henaoo"
}