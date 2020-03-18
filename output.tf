output "arn" {
  description = "The Amazon Resource Name(ARN) of the key alias."
  value       = join("", aws_kms_key.this.*.arn)
}

output "key_id" {
  description = "The globally unique identifier for the key."
  value       = join("", aws_kms_key.this.*.key_id)
}
output "target_key_id" {
  description = "Key identifier pointed to by the alias."
  value       = join("", aws_kms_alias.this.*.target_key_id)
}

output "target_key_arn" {
  description = "ARN pointed to by the alias."
  value       = join("", aws_kms_alias.this.*.target_key_arn)
}
