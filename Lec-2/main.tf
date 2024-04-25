#Learning HCL with IT Infosoft

/* 
this 
is
a multi line 
comment*/

#=======================================
#Block
block_type {
  attributel = valuel
  attribute2 = value2
} 

resource "aws_instance" "example" {
  ami = "ami-007020fd9c84e18c7"
  instance_type = "t2.micro"
  count = 4
  #enabled = true
}



#Attributes
key = value


#============================================
Datatypes
type = "string"
number = 2
boolean = true



#List
list = ["item]", "item2", "items3"]

security_groups = ["sg-0149", "sg-000149" ]

#Maps
variable "example_map" {
    type = map
    default = { keyl = "valuel", key2 = "value2", key = "value3" }
}


locals {
    my_map = { "name" = "John Doe", "age" = 30, "is_admin" = true }
}

age_of_john = locals.my_map ["age"]



#==================================================================
#Conditions

resource "aws_instance" "server" {
    instance_type = var.environment == "development"? "t2.micro" : "t2.small"
}

#======
#Function
locals {
    name = "John Cena"
    fruits = ["apple", "banana", "mango" ]
    message = "Hello ${upper(local.name)}! I know you like ${join(",", local.fruits)}"
}

Hello JOHN CENA! I know you like apple, banana, mango



#Resourcedependency

resource "aws_instance" "name" {
    vpc_security_group_ids = aws_security_group.mysg.id
}

resource "aws_security_group" "mysg" {
    #inbound rules
}










