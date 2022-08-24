resource "aws_instance" "dev-app" { 
  ami = data.aws_ami.myami.id
  instance_type = "t2.micro"
 
 # root disk
  root_block_device {
    volume_size           = "20"
    volume_type           = "gp2"
    encrypted             = true
    delete_on_termination = true
  }  # data disk

  ebs_block_device {
    device_name           = "/dev/xvda"
    volume_size           = "50"
    volume_type           = "gp2"
    encrypted             = true
    delete_on_termination = true
  }

  
  tags = { 
    Name = local.default_name
  }

}

resource "aws_ebs_volume" "my-vol" { 
  availability_zone = "us-east-2a"
  size = 40

  tags = {
    Name = "my-vol-ebs"
   }

}


resource "aws_volume_attachment" "ebs_att" {
   device_name = "/dev/sdh"
   volume_id   = aws_ebs_volume.my-vol.id
   instance_id = aws_instance.dev-app.id
}

