output "private_ip" {
    value = aws_instance.vm-server.private_ip
    description = "Private Ip of the ec2 instance"
}