terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.45.0"
    }
  }
}
resource "aws_instance" "web" {
  ami           = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.nano"
  key_name      = "new_key"


  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_s3_bucket" "ovk" {
  bucket = "onkar-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

