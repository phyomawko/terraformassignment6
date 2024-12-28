resource "aws_subnet" "subnet_vpcA" {
    vpc_id = aws_vpc.vpcA.id
    cidr_block = "192.168.1.0/24"
    map_public_ip_on_launch = "true"
    tags = {
        Name = "Public Subent for VPC-A"
    }
  
}
resource "aws_subnet" "subnet_vpcB" {
    vpc_id = aws_vpc.vpcB.id
    cidr_block = "10.1.1.0/24"
    
    tags = {
        Name = "Private Subent for VPC-B"
    }
  
}