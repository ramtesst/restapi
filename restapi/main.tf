provider "restapi" {
  uri                  = "https://www.google.com"
  debug                = true
}

provider "aws" {
    region="us-east-1"
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}


resource "aws_instance" "machine1" {
    ami           = "ami-04b9e92b5572fa0d1"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
}
