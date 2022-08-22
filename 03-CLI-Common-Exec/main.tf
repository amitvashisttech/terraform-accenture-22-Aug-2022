provider "aws" {
  region = "us-west-2"
}


resource "aws_instance" "web" { 
  ami = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
  
 tags = { 
   Name = "WebServer-AV"
   Team = "DevOps"
  } 

}

resource "aws_instance" "db" { 
  ami = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
  
 tags = {
   Name = "WebServer-AV"
   Team = "DevOps"
  }

}


resource "aws_instance" "web1" { 
  ami = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
  
 tags = { 
   Name = "WebServer-AV"
   Team = "DevOps"
  } 

}
