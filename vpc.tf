resource "aws_vpc" "vpcA" {
    cidr_block = "192.168.0.0/16"
    tags = {
      Name = "VPC-A"
    }
  
}
resource "aws_vpc" "vpcB" {
    cidr_block = "10.1.0.0/16"
    tags = {
      Name = "VPC-B"
    }
  
}