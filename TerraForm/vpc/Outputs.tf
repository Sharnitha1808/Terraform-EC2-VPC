output "vpc_id"{
value = aws_vpc.MyVpc.id 
}  
output "Pubsub_id"{
value = aws_subnet.priv_sub.id
}


