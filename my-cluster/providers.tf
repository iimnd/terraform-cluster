// terraform provider list
provider "aws" {
  region = lookup(var.awsprops, "region")
}
