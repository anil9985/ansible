provider "aws" {
  version = "~> 4.0"
  region     = "us-east-2"
}

resource "aws_instance" "web" {
ami           = "ami-0d406e26e5ad4de53"
instance_type = "t2.micro"

 tags = {
    Name = "Git-jenkins-1"
 }
output "private_ip"{   
     value = aws_instance.web.private_ip
}
output "public_ip"{
     value = aws_instance.web.public_ip
}
}
