variable "instance_names" {
  default = ["db","backend","frontend"]
}

variable "common_tags" {
  default = {
    Project="expense"
    Environment="dev"
    Terraform=true
  }
}

variable "domain_name" {
    default = "narendra.shop"  
}