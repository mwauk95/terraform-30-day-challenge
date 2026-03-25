resource "aws_instance" "webserver" {
  ami           = "ami-0fb653ca2d3203ac1" 
  instance_type = "t2.micro"              
  tags = {
    Name = ""
  }
}
