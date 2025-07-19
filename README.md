# terraform-examples
Terraform Examples

Terraform Basic commands:

```
$ terraform init
$ terraform fmt -recursive
$ terraform validate

# To create a resource with plan file
$ terraform plan -out createplan.tfplan --var-file="/path/to/tfvarfile"
$ terraform apply createplan.tfplan

# To destroy a resource with plan file
$ terraform plan -destroy -out destroyplan.tfplan --var-file="/path/to/tfvarfile"
$ terraform apply destroyplan.tfplan

# Destroy without plan file
$ terraform destroy
```
