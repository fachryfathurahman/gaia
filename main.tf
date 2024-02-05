resource "aws_instance" "my_vm" {
  count         = 2
  ami           = "ami-0005e0cfe09cc9050" //Ubuntu AMI
  instance_type = "t2.micro"

  tags = {
    Name = "My EC2 instance ${count.index}",
  }
}

resource "aws_iam_user" "the-accounts" {
  for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
  name     = each.key
}


