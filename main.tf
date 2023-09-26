provider "aws" {
  version = "~> 4.0"
  region     = "us-east-2"
  access_key = "AKIAZWEYXR4JREADETNR"
  secret_key = "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"
}

resource "aws_instance" "web" {
ami           = "ami-0d406e26e5ad4de53"
instance_type = "t2.micro"
key_name      = "masterkeypair"

 tags = {
    Name = "example-server"
 }
}
