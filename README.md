# terraform-gitlab-user_gpgkey

Terraform module to manage the following Twingate resources:

* gitlab_user_gpgkey

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_user" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-user/local"
  version = "1.2.0"

  name     = "John Doe"
  username = "jdoe"
  password = "XKvhCJp9MtwTgwRu" # gitleaks:allow
  email    = "john.doe@example.com"
}

module "gitlab_user_gpgkey" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-user-gpgkey/local"
  version = "1.0.0"

  key = file("${path.module}/public-key.asc")

  user_id = module.gitlab_user.id
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_user_gpgkey.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/user_gpgkey) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key"></a> [key](#input\_key) | The armored GPG public key | `string` | n/a | yes |
| <a name="input_user_id"></a> [user\_id](#input\_user\_id) | The ID of the user to add the GPG key to | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | The time when this key was created in GitLab |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | The ID of the GPG key |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
