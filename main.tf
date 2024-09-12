
resource "aws_ami_from_instance" "ami" {
  name               = var.ami_name
  source_instance_id = var.source_id

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    "Username" = var.ami-username
    "password" = var.ami-password
    # Name = var.ami_name
  }
}
