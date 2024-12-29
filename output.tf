output "vpcA_id" {
    value = aws_vpc.vpcA.id
  
}
output "vpcB_id" {
    value = aws_vpc.vpcB.id
  
}
output "serverA_id" {
    value = aws_instance.ec2_severA.id
  
}
output "serverB_id" {
    value = aws_instance.ec2_severB.id
  
}