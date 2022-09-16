module "eks" {
  source                  = "terraform-aws-modules/eks/aws"
  version                 = "~> 18.0"
  cluster_version         = "1.22"
  cluster_name            = "k8s-${var.env}-abc-demo"
  vpc_id                  = module.vpc.vpc_id
  subnet_ids              = module.vpc.private_subnets
  enable_irsa             = true
  eks_managed_node_groups = {
    soldier_${var.env}_node = {
      min_size     = var.node_group_min_size
      max_size     = var.node_group_max_size  
      desired_size = var.node_group_desired_size
      #instance_types   = ["m5.large"]
      instance_types   = [var.instance_types]
    }
  }  
}
output "aws_auth_config_map" {
  value = module.eks.aws_auth_configmap_yaml
}
