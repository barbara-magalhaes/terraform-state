resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "vpc-terraform"
  }
}

resource "aws__subnet" "subnet" {
    vpc_id       =  aws_vpc.vpc.id
     cidr_block  = "10.0.0.0/16"

  tags = {
    Name = "subnet-terraform"
  }
}

resource "aws_internet_gateway" "gateway" {
    vpc_id =  aws_vpc.vpc
    tags = {
        Name = "internet-gateway-terraform"
    }
}

 resource "aws_route_table" "route_table" {
    vpc_id = aws_vpc.vpc
   route = {
     cidr_block  = "10.0.0.0/16"
    gateway_id = aws_internet_gateway.internet.id
   }
   tags = {
     Name = "route-table-terraform"
   }
 }

 resource "aws_route_table_association" "rta" {
   subnet_id =  aws__subnet.subnet.id
   route_table_id = aws_route_table.route_table
 }
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_security_group" "example" {
 name = "security-group-terraform"
 description = "permitir acesso na porta 22"
 vpc_id =  aws_vpc.vpc.id

ingress {
    description = "SSH"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "security_group-terraform"
  }
}