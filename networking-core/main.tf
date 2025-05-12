module "prod_vpc" {  
  source  = "terraform-aws-modules/vpc/aws"  
  name    = "prod-vpc"  
  cidr    = "10.1.0.0/16"  
  private_subnets = ["10.1.1.0/24", "10.1.2.0/24"]  
  enable_flow_logs = true  
}  

resource "aws_ram_resource_share" "vpc_peering" {  
  name                      = "prod-dev-sharing"  
  allow_external_principals = false  
}  
