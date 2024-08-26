
variable "image_id" {
    type=string
    default = "ami-041e2ea9402c46c32"
}

variable "instance_type" {
    default = "t3.micro"  
}

variable "Instance_tags" {
    type = map 
    default = {
        Name="db"
    }
  
}

variable "sg_name" {
  default = "allow_ssh"
}

variable "sg_description" {
   default = "allow_ssh"
}

variable "ssh_port" {
  default = 22
}

variable "tcp_port" {
  default = "tcp"
}

variable "allow_cidr" {
   type=list(string)
   default =  ["0.0.0.0/0"]
}

variable "sg_tags" {
    type=map
    default = {
        Name="allow_ssh"
        CreatedBy="NNR" 
    }
  
}

