locals {
  ami_id="ami-041e2ea9402c46c32"
  sg_id="sg-0b8b83e14e0319dea"
  instance_type=var.instance_name=="db"?"t3.small":"t3.micro"
}