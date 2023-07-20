###############################################################################
### OUTPUTS OF IMPORTANT VALUES
###############################################################################

#output "db_endpoint" {
#  value = aws_db_instance.rds.endpoint
#}

#output "db_user" {
#  value = aws_db_instance.rds.username
#}

#output "db_name" {
#  value = aws_db_instance.rds.db_name
#}

#output "db_arn" {
#  value = aws_db_instance.rds.arn
#}

output "password" {
  sensitive = true
  value     = var.db_password
}


output "AwsAccountID" {
  description = "AWS account ID"
  value       = data.aws_caller_identity.current.account_id
}

output "GitRepo" {
  description = "Git repo of this project"
  value       = "https://github.com/comtrade360/${local.terraform-git-repo}"
}

#output "VM_PublicIP" {  
#  value = aws_eip.ip.public_ip  
#}

#output "VM_PublicDnsName" {  
#  value = aws_eip.ip.public_dns
#}

#output "VM_PrivateIP" {  
#  value = aws_instance.cloud-shell.private_ip
#}