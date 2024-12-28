resource "aws_security_group" "sg_serverA" {
  name        = "SecurityGroupServerA"
  description = "Security group for Server A"
  vpc_id      = aws_vpc.vpcA.id

  tags = {
    Name = "SecurityGroupServerA"
  }
}
resource "aws_security_group" "sg_serverB" {
  name        = "SecurityGroupServerB"
  description = "Security group for Server B"
  vpc_id      = aws_vpc.vpcB.id

  tags = {
    Name = "SecurityGroupServerB"
  }
}
# Allow SSH from anywhere
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.sg_serverA.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}


resource "aws_vpc_security_group_ingress_rule" "allow_icmp_serverA" {
  security_group_id = aws_security_group.sg_serverA.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = -1 # -1 allows all ICMP types and codes
  ip_protocol       = "icmp"
  to_port           = -1 # -1 allows all ICMP types and codes
}
resource "aws_vpc_security_group_ingress_rule" "allow_icmp_serverB" {
  security_group_id = aws_security_group.sg_serverB.id
  cidr_ipv4         = "192.168.1.0/24"
  from_port         = -1 # -1 allows all ICMP types and codes
  ip_protocol       = "icmp"
  to_port           = -1 # -1 allows all ICMP types and codes
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4_serverA" {
  security_group_id = aws_security_group.sg_serverA.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4_serverB" {
  security_group_id = aws_security_group.sg_serverB.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}