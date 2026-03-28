resource "aws_instance" "Roboshop" {
  ami           = local.ami_id
  count = length(var.instances)
  instance_type = "t3.micro"
  vpc_security_group_ids = local.sg_id[count.index]

  tags = merge( var.common_tags ,
  {
    Name = var.instances[count.index]
  })
}