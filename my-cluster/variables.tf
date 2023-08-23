variable "awsprops" {
  description = "define the variables"
  type        = map(string)
  default = {
    region       = "us-east-1"             # aws region
    vpc          = "vpc-5234832d"          # vpc id must be valid (already set), or you must create it first
    ami          = "ami-0aa2b7722dc1b5612" # ami id, example: ec2 ami locator for ubuntu : https:#cloud-images.ubuntu.com/locator/ec2/
    itype        = "t2.micro"              # instance resource type
    subnet       = "subnet-81896c8e"       # subnet id must be valid (already set), or you must create it first
    publicip     = true
    keyname      = "test-dev-key"  # secret key name must be valid (already set), or you must create it first
    secgroupname = "IAC-Sec-Group" # security group name
  }
}