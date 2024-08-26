output "ami_id" {
    value = data.aws_ami.ami_id.id  
}

output "ami_info"{
    value = aws_instance.expense
}