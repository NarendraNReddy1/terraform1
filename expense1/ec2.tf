resource "aws_instance" "expense"{
    count=length(var.instance_names)
    ami=data.aws_ami.ami_id.id
    # vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    vpc_security_group_ids = [local.sg_id]
    instance_type = var.instance_names[count.index] == "db" ? "t3.small":"t3.micro"
    

    tags=merge(var.common_tags,
       {
          Name=var.instance_names[count.index]
          Module=var.instance_names[count.index]
       }
    )
}
resource "aws_security_group" "allow_ssh" {
   name="allow_ssh"
   description = "allow_ssh"

    ingress{
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]        
    }  

    egress{
        from_port        = 0 # from o to 0 means opening for all ports 22  (ssh) 443 (https)
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]        
}
  tags = {
    Name = "allow_ssh"
    CreatedBy="NNR1"
  }
}    