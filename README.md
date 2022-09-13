# terraform-eks

This is repo is used to provision EKS.
PR to dev will trigger a Circle CI Workflow to provision dev cluster.
PR to sqa will trigger a Circle CI Workflow to provision sqa cluster.

Environment specific variables and backend configs are put in /env/ folder.

terraform init -backend-config=/tmp/project/env/${CIRCLE_BRANCH}.tfbackend 
terraform plan -var-file=/tmp/project/env/${CIRCLE_BRANCH}.tfvars -out tfapply 
terraform apply -auto-approve tfapply 
