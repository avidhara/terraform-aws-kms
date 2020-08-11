# Terraform module for aws KMS

## Using as module
```hcl
module "kms" {
  source  = "app.terraform.io/foss-cafe/kms/aws"
  version = "1.0.1"
  name    = "test-key"
  description = "CMK for cloudwath logs"
  policy = data.aws_iam_policy_document.kms_access.json
  deletion_window_in_days = 7
  tags = var.tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.24 |
| aws | ~> 2.60 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.60 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| customer\_master\_key\_spec | Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC\_DEFAULT, RSA\_2048, RSA\_3072, RSA\_4096, ECC\_NIST\_P256, ECC\_NIST\_P384, ECC\_NIST\_P521, or ECC\_SECG\_P256K1. Defaults to SYMMETRIC\_DEFAULT | `string` | `"SYMMETRIC_DEFAULT"` | no |
| deletion\_window\_in\_days | Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days. Defaults to 30 days. | `number` | `30` | no |
| description | The description of the key as viewed in AWS console. | `string` | `""` | no |
| enable\_key\_rotation | Specifies whether key rotation is enabled. Defaults to false | `bool` | `false` | no |
| is\_enabled | Specifies whether the key is enabled. Defaults to true. | `bool` | `true` | no |
| key\_usage | Specifies the intended use of the key. Valid values: ENCRYPT\_DECRYPT or SIGN\_VERIFY. Defaults to ENCRYPT\_DECRYPT. | `string` | `"ENCRYPT_DECRYPT"` | no |
| name | Name of the alias | `string` | `""` | no |
| policy | A valid KMS policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy. | `string` | `""` | no |
| tags | A mapping of tags to assign to the object. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The Amazon Resource Name(ARN) of the key alias. |
| key\_id | The globally unique identifier for the key. |
| target\_key\_arn | ARN pointed to by the alias. |
| target\_key\_id | Key identifier pointed to by the alias. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
