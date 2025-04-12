provider "aws" {
  region     = "us-east-1"
  access_key = ""     ## Add your key
  secret_key = ""
}

resource "aws_instance" "demo_ec2" {
  count         = 4
  ami           = "ami-0866a3c8686eaeeba" ## Add ami id as shown in your account 
  instance_type = "t3.medium"
  key_name      = "juhikaa"          ## Add your key 

  tags = {
    Name = "Terraform-Demo-${count.index + 1}"
  }
}
