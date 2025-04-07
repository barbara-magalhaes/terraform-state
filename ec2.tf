resource "aws_instance" "foguinho" {
    ami = "ami-08b5b3a93ed654d19"
    instance_type = "t2.micro"

    tags = {
        Name = "Foguinho da AWS"
    }
}