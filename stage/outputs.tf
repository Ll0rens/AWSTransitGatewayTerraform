output "private_ip_vpc_A" {
    value = module.ec2_A.private_ip
    description = "Private Ip of the ec2 instance"
}

output "private_ip_vpc_B" {
    value = module.ec2_B.private_ip
    description = "Private Ip of the ec2 instance"
}

output "private_ip_vpc_C" {
    value = module.ec2_C.private_ip
    description = "Private Ip of the ec2 instance"
}