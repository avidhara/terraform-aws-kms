# Terraform module for aws KMS

## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Inputs

| Name                     | Description                                                                                                                                                                                                                                                                                                           | Type          | Default               | Required |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------- | --------------------- | :------: |
| customer_master_key_spec | Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC_DEFAULT, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, or ECC_SECG_P256K1. Defaults to SYMMETRIC_DEFAULT | `string`      | `"SYMMETRIC_DEFAULT"` |    no    |
| deletion_window_in_days  | Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days. Defaults to 30 days.                                                                                                                                                                                | `number`      | `30`                  |    no    |
| description              | The description of the key as viewed in AWS console.                                                                                                                                                                                                                                                                  | `string`      | `""`                  |    no    |
| enable_key_rotation      | Specifies whether key rotation is enabled. Defaults to false                                                                                                                                                                                                                                                          | `bool`        | `false`               |    no    |
| is_enabled               | Specifies whether the key is enabled. Defaults to true.                                                                                                                                                                                                                                                               | `bool`        | `true`                |    no    |
| key_usage                | Specifies the intended use of the key. Valid values: ENCRYPT_DECRYPT or SIGN_VERIFY. Defaults to ENCRYPT_DECRYPT.                                                                                                                                                                                                     | `string`      | `"ENCRYPT_DECRYPT"`   |    no    |
| name                     | Name of the alisa                                                                                                                                                                                                                                                                                                     | `string`      | `""`                  |    no    |
| policy                   | A valid policy JSON document                                                                                                                                                                                                                                                                                          | `string`      | n/a                   |   yes    |
| tags                     | A mapping of tags to assign to the object.                                                                                                                                                                                                                                                                            | `map(string)` | `{}`                  |    no    |

## Outputs

| Name           | Description                                     |
| -------------- | ----------------------------------------------- |
| arn            | The Amazon Resource Name(ARN) of the key alias. |
| key_id         | The globally unique identifier for the key.     |
| target_key_arn | ARN pointed to by the alias.                    |
| target_key_id  | Key identifier pointed to by the alias.         |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
