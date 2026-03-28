resource "aws_instance" "roboshop" {
  count = length(var.instances)
  ami = "ami-0220d79f3f480ecf5"
  instance_type = var.environment == "dev" ?  "t3.micro" : "t3.small"
  vpc_security_group_ids = [local.sg_id]

  tags = merge( var.tags ,
   {
    Name = "${var.instances[count.index]}-${var.environment}"
  })

}