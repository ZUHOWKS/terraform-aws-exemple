variable "environnement" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
}

resource "aws_instance" "app_server" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance-${var.environnement}"
  }
}