module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.0"

  name = "${var.project_name}-vpc"
  cidr = "10.0.0.0/16"

  azs              = ["${var.aws_region}a", "${var.aws_region}b", "${var.aws_region}c"]
  public_subnets   = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"]
  private_subnets  = ["10.0.48.0/20", "10.0.64.0/20", "10.0.80.0/20"]
  database_subnets = ["10.0.96.0/20", "10.0.112.0/20", "10.0.128.0/20"]

  create_database_subnet_group = true
  create_database_subnet_route_table = true

  tags = local.tags
}