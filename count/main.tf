resource "aws_vpc" "vpc"{
    cidr_block = var.cidr
    tags {
        Name = "vpctest"
    }
}
resource "aws_subnet" "subnets" {
    count = length(var.sub)
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.sub[count.index]
    tags {
        Name = "subnet ${count.index}"
    }
}