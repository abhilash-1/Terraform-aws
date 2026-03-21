output security_group_id{
    value = aws_security_group.roboshop_sg.id
}

output private_ip {
    value = aws_instance.roboshop[*].private_ip
}