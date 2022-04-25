variable "project_name" {
    type = string
    description = "project name"
}

variable "aws_region" {
    type = string
}

variable "environment" {
    type = string
    description = "environment"
}

variable "mysql_master_availability_zone" {
    type = string
}

variable "mysql_family" {
    type = string
    default = "mysql5.7"
}

variable "mysql_major_engine_version" {
    type = string
    default = "5.7"
}

variable "mysql_engine" {
    type = string
    default = "mysl"
}

variable "mysql_engine_version" {
    type = string
    default = "5.7.25"
}

variable "mysql_instance_class" {
    type = string
    default = "db.t3.small"
}

variable "mysql_db_availability_zone" {
    type = string
    description = "the availability zone where db will be created"
    default = "us-east-2a"
}

variable "mysql_storage" {
    type = number
    description = "amount of GBs to allocate for each mysql instance"
    default = 20
}

variable "mysql_retention_period" {
    type = number
    description = "number of days to retain db backups"
    default = 7
}

variable "username" {
    type = string
    description = "the username of the database"
    default = "mysql"
}

variable "tags" {
    type = object({})
    default = {}
    description = "Resource tags"
}