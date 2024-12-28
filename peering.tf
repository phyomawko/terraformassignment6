# VPC Peering Connection
resource "aws_vpc_peering_connection" "vpc_peering_AB" {
  vpc_id        = aws_vpc.vpcA.id
  peer_vpc_id   = aws_vpc.vpcB.id
  auto_accept   = false
  tags = {
    Name = "VPC Peering Connection AB"
  }
}

# Accept VPC Peering Request
resource "aws_vpc_peering_connection_accepter" "accepterAB" {
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_AB.id
  auto_accept               = true

  tags = {
    Name = "VPC Peering Connection AB Accepter"
  }
}



