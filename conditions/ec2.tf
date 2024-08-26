resource "aws_instance" "db"{
    ami="ami-041e2ea9402c46c32"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"

    tags={
        Name="db"
 
    }

}  