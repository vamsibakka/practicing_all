resource "aws_vpc" "testvpc" {
    cidr_block = var.cidr 
    tags = {
        Name = "testvpc"
    }
}
resource "aws_subnet" "subnet1"{
    cidr_block = var.subcidr
    vpc_id = aws_vpc.testvpc.id 
    tags= {
        Name = "subnet1"
    }
}
resource "aws_internet_gateway" " gateway1"{
    vpc_id = aws_vpc.testvpc.id
    tags={
        Name = "gateway1"
    }
}
resource "aws_route_table" "routetbl1"{
    vpc_id = aws_vpc.testvpc.id
    route{
        cidr_block= "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gateway1.id
    }
}
resource "aws_route_table_association" " tableasso"{
    subnet_id= aws_subnet.subnet1.id
    route_table_id = aws_route_table.routetbl1.id
}