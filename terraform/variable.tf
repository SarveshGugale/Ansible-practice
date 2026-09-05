
variable "instances" {
  description = "Map of instance names to AMI IDs, SSH users, and OS family"

  type = map(object({
    ami       = string
    user      = string
    os_family = string
    instance_type = string
  }))

  default = {
    "Control-node-ubuntu" = {
      ami       = "ami-0b6d9d3d33ba97d99" # Ubuntu 26.04 LTS 
      user      = "ubuntu"
      os_family = "ubuntu"
      instance_type = "t2.micro"
    }

    "worker-ubuntu" = {
      ami       = "ami-0b6d9d3d33ba97d99" # Ubuntu 26.04 LTS 
      user      = "ubuntu"
      os_family = "ubuntu"
      instance_type = "t2.micro"
    }
    # "worker-redhat" = {
    #   ami       = "ami-00adafae70b8029d8" # Redhat 10
    #   user      = "ec2-user"
    #   os_family = "redhat"
    # }
    # "worker-amazon" = {
    #   ami       = "ami-004f790b835b26145" # amazon-linux
    #   user      = "ec2-user"
    #   os_family = "amazon"
    # }
  }
}