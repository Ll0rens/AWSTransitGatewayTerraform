module "tg" {
    source = "../modules/transit_gateway"
}

module "ec2" {
    count = var.vpc_count
    source = "../modules/ec2"
    vpc_name = "VPC ${count.index + 1}"
    cidr_block = "10.${count.index + 1}.0.0/16"
    public_subnet_cidrs = ["10.${count.index + 1}.0.0/24","10.${count.index + 1}.1.0/24"]
    transit_gateway_id = module.tg.tg_id
}
