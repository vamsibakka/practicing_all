variable " region1"{
    type = string
    default = "us-east-1"
    description = "This is the region in which the infrasture is created "
}
variable "sub"{
    type = list(string)
    description = "The subnet cidrs range "
}
variable "cidr" {
    type = string
    description = "The cidr of vpc"
}
