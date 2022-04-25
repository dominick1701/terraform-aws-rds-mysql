output "mysql_url" {
    value = "mysql://${module.db.db_instance_username}:${random_password.mysql.result}@${module.db.db_instance_endpoint}:${module.db.db_instance_port}/${module.db.db_instance_name}"
    description = "URL MySQL"
}