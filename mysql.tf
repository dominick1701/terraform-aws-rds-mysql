module "db" {
    source = "terraform-aws-modules/rds/aws"
    version = "3.1.0"

    identifier = "${var.project_name}-${var.environment}-mysql"
    availability_zone = var.mysql_master_availability_zone
    
    family = var.mysql_family
    major_engine_version = var.mysql_major_engine_version
    engine = var.mysql_engine
    engine_version = var.mysql_engine_version
    instance_class = var.mysql_instance_class
    allocated_storage = var.mysql_storage
    
    name = var.project_name
    username = var.username
    password = random_password.mysql.result
    
    tags = local.tags

}