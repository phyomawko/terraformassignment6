variable "vpcA_cidr" {
    type=string
    default = "192.168.0.0/16"
  
}
variable "subnet_vpcA_cidr" {
    type = string
    default = "192.168.1.0/24"
  
}
variable "subnet_vpcB_cidr" {
    type = string
    default = "10.1.1.0/24"
  
}
variable "vpcB_cidr" {
    type=string
    default = "10.1.0.0/16"
  
}