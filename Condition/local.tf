locals {
    sg_id = aws_security_group.roboshop_sg.id
}

locals {
    ip = zipmap(var.instances, aws_instance.roboshop[*].private_ip)
}