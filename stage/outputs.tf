output "private_ip_vpc" {
    value = { for instance in module.ec2 : instance.vpc_name => instance.private_ip }
    description = "Private Ip of the ec2 instance"
}
