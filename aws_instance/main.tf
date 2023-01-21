resource "aws_instance" "this" {
  ami           = "ami-029562ad87fe1185c"
  instance_type = "t2.micro"
  
  tags = {
    Name = var.instance_name
  }
}
