module "db" {
  source = "terraform-aws-modules/rds/aws"
  version = "3.1.0"

  identifier = "${var.project_name}-${var.environment}-mysql"
  availability_zone = var.mysql_db_availability_zone
  
  engine = var.mysql_engine
  engine_version = var.mysql_engine_version
  family = var.mysql_family
  major_engine_version = var.mysql_major_engine_version
  instance_class = var.mysql_instance_class

  allocated_storage = var.mysql_storage
    
  name = var.project_name
  username = var.username
  password = random_password.mysql.result
  
  db_subnet_group_name = module.vpc.database_subnet_group
  subnet_ids = module.vpc.database_subnets
  vpc_security_group_ids = [module.security_group.security_group_id]

  tags = local.tags
}