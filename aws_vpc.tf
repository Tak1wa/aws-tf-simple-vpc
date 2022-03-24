# VPC
resource "aws_vpc" "tf-hoge-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
}

# Subnet
resource "aws_subnet" "tf-hoge-subnet" {
  vpc_id     = aws_vpc.tf-hoge-vpc.id
  cidr_block = "10.0.0.0/24"
}