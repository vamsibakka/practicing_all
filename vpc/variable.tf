variable "cidr"{
    type = string
    description = "This is the cidr of vpc"
    default = "192.168.0.0/24"
}
variable "subcidr"{
    type = string
    description = "this is subnet cidr"
    default = "192.168.1.0/24"
}