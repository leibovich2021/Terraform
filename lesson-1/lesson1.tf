provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "my_ubuntu2" {
  count         = 2
  ami           = "ami-00978328f54e31526"
  instance_type = "t3.micro"

  tags = {
    Name     = "My Ubuntu 2 server"
    Owner    = "Denis Leibovich"
    Project  = "Terraform lessons"
  }

}
resource "aws_instance" "my_ubuntu3" {
  ami           = "ami-00978328f54e31526"
  instance_type = "t3.small"
  
  tags = {
    Name     = "My Ubuntu 3 server"
    Owner    = "Denis Leibovich"
    Project  = "Terraform lessons"
  }
}
