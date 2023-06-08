resource "aws_vpc" "testvpc" {
    cidr_block = var.cidr 
    tags = {
        name = "testvpc"
    }
}