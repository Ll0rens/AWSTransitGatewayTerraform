variable "vpc_name" {
  type = string
}

variable "transit_gateway_id" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
}

variable "azs" {
 type        = list(string)
 description = "Availability Zones"
 default     = ["eu-west-1a", "eu-west-1b"]
}

variable "vm_instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "vm_associate_public_ip_address" {
  type        = bool
  description = "Associate a public IP address to the EC2 instance"
  default     = true
}