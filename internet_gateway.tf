resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpcA.id
    tags = {
      Name = "Internet Gateway for VPC-A"
    }
  
}