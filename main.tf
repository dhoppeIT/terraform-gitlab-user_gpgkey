resource "gitlab_user_gpgkey" "this" {
  key = var.key

  user_id = var.user_id
}
