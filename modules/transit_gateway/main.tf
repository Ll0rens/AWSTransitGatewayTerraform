#Create Transit Gateway

resource "aws_ec2_transit_gateway" "demo_tgw" {
  description = "demo_tgw"
  tags = {
    Name = "Demo_Transit_Gateway"
  }
}

resource "aws_ec2_transit_gateway_route_table" "association_default_route_table" {
  transit_gateway_id = aws_ec2_transit_gateway.demo_tgw.id
}