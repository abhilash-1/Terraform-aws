resource "aws_instance" "roboshop" {
  count = length(var.instances)  
  ami = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = "t3.micro"

  tags = (merge var tags,
   {
    Name = 
  })
}