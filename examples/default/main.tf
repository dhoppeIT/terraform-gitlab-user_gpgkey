module "gitlab_user_gpgkey" {
  source = "../../"

  key = file("${path.module}/public-key.asc")

  user_id = data.gitlab_user.this.id
}
