# vpc Variables
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        = string
}
# subnet variable 
variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}
# create public subnet az2/ creating a variable
variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type        = string
}
# create private aws az1 variable  here?
variable "private_app_subnet_az1_cidr" {
  default     = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type        = string
}
# create private aws az2 subnet variable
variable "private_app_subnet_az2_cidr" {
  default     = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type        = string
}
# create variable pravite az1 data subnet
variable "private_data_subnet_az1_cidr" {
  default     = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type        = string
}
# create variable pravite az2 data subnet
variable "private_data_subnet_az2_cidr" {
  default     = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type        = string
}

# security group veriable 
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "the ip address that can ssh into the ec2 instances"
  type        = string
}
# Rds variables
variable "database_snapshot_identifier" {
  default     = "arn:aws:rds:us-east-1:650782131285:snapshot:fleetcart-final-snapshot"
  description = "the database snapshot arn"
  type        = string
}
variable "database_instance_class" {
  default     = "db.t4g.micro"
  description = "the database instance type"
  type        = string
}
variable "database_instance_identifier" {
  default     = "database-1"
  description = "the database instance identifier"
  type        = string
}
variable "multi_az_deployment" {
  default     = false
  description = "create a stanby db instance"
  type        = bool
}
# application load balancer variable
variable "ssl_certificate_arn" {
  default     = "arn:aws:acm:us-east-1:650782131285:certificate/ccfc7e94-b498-4fca-8f7f-6d63fd809812"
  description = "ssl certificate arn"
  type        = string
}
# sns topic variable
variable "operator_email" {
  default     = "sa.babatunde57@gmail.com"
  description = "a valid email address"
  type        = string
}

# Auto scaling group veriables
variable "launch_template_name" {
  default     = "dev-launch-template"
  description = "name of the launch template"
  type        = string
}
variable "ec2_image_id" {
  default     = "ami-020cba7c55df1f615"
  description = "id of the ami"
  type        = string
}
variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "the ec2 instance type"
  type        = string
}
variable "ec2_key_pair_name" {
  default     = "dev-key"
  description = "name of the ec2 keypair"
  type        = string
}
  