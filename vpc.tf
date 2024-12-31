resource "aws_vpc" "vpcA" {
    cidr_block = var.vpcA_cidr
    tags = {
      Name = "VPC-A"
    }
  
}
resource "aws_vpc" "vpcB" {
    cidr_block = var.vpcB_cidr
    tags = {
      Name = "VPC-B"
    }
  
}