provider "aws"{
    region = "ap-northeast-2"
}

terraform {
 backend "s3" {
 bucket = "rbfl-cjwave"
 key = "workspaces-example/terraform.tfstate"
 region = "ap-northeast-2"
 dynamodb_table = "terraform-locks"
 encrypt = true
 }
}

resource "aws_instance" "example" {
 ami = "ami-0130d8d35bcd2d433"
 instance_type = "t2.micro"
}