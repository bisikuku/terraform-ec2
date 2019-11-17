resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}

# to allocate a static public ip
resource "aws_eip" "example_eip" {
  instance = aws_instance.example.id
  vpc      = true
}


output "public_ip" {
  #value = aws_instance.example.public_ip   # when allocated dynamically by aws
  value = aws_eip.example_eip.public_ip # when generated using eip
}
