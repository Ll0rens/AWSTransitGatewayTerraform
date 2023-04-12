module "tg" {
    source = "../modules/transit_gateway"
}

module "ec2_A" {
    source = "../modules/ec2"
    vpc_name = "VPC A"
    cidr_block = "10.0.0.0/16"
    public_subnet_cidrs = ["10.0.0.0/24","10.0.1.0/24"]
    transit_gateway_id = module.tg.tg_id
}

module "ec2_B" {
    source = "../modules/ec2"
    vpc_name = "VPC B"
    cidr_block = "10.1.0.0/16"
    public_subnet_cidrs = ["10.1.0.0/24","10.1.1.0/24"]
    transit_gateway_id = module.tg.tg_id
}

module "ec2_C" {
    source = "../modules/ec2"
    vpc_name = "VPC C"
    cidr_block = "10.2.0.0/16"
    public_subnet_cidrs = ["10.2.0.0/24","10.2.1.0/24"]
    transit_gateway_id = module.tg.tg_id
}


