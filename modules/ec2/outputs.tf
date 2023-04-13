output "private_ip" {
    value = aws_instance.vm-server.private_ip
    description = "Private Ip of the ec2 instance"
}

output "vpc_name" {
    value = aws_instance.vm-server.tags.Name
    description = "Name of ec2 instance"
}