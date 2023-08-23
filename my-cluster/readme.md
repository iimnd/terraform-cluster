## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.63.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.project-iac](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.project-iac-sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.private_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_awsprops"></a> [awsprops](#input\_awsprops) | define the variables | `map(string)` | <pre>{<br>  "ami": "ami-0aa2b7722dc1b5612",<br>  "itype": "t2.micro",<br>  "keyname": "test-dev-key",<br>  "publicip": true,<br>  "region": "us-east-1",<br>  "secgroupname": "IAC-Sec-Group",<br>  "subnet": "subnet-81896c8e",<br>  "vpc": "vpc-5234832d"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dummy-value"></a> [dummy-value](#output\_dummy-value) | this output only test |
| <a name="output_ec2instance"></a> [ec2instance](#output\_ec2instance) | this output is public ip of ec2 instances |
