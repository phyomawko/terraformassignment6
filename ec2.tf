resource "aws_instance" "ec2_severA" {
    ami="ami-06650ca7ed78ff6fa"
    instance_type = "t2.micro"
    key_name = aws_key_pair.pmk_key_pair.key_name
    subnet_id = aws_subnet.subnet_vpcA.id
    security_groups = [aws_security_group.sg_serverA.id]
    tags = {
      Name = "Sever A"
    }
    
  
}
resource "aws_instance" "ec2_severB" {
    ami="ami-06650ca7ed78ff6fa"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.subnet_vpcB.id
    security_groups = [aws_security_group.sg_serverB.id]
    tags = {
      Name = "Sever B"
    }
    
  
}