resource "aws_route_table" "public_rt_vpcA" {
    vpc_id = aws_vpc.vpcA.id
    
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  route {
    cidr_block = "10.1.1.0/24"
    vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_AB.id
  }
    

  
}
resource "aws_route_table" "private_rt_vpcB" {
    vpc_id = aws_vpc.vpcB.id
    
  route {
    cidr_block = "192.168.1.0/24"
    vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_AB.id
  }
    

  
}
resource "aws_route_table_association" "public_rt_assoc_vpcA" {
    route_table_id = aws_route_table.public_rt_vpcA.id
    subnet_id = aws_subnet.subnet_vpcA.id
  
}
resource "aws_route_table_association" "private_rt_assoc_vpcB" {
    route_table_id = aws_route_table.private_rt_vpcB.id
    subnet_id = aws_subnet.subnet_vpcB.id
  
}