variable "key" {
  type        = string
  description = "The armored GPG public key"
}

variable "user_id" {
  type        = number
  default     = null
  description = "The ID of the user to add the GPG key to. If this field is omitted, this resource manages a GPG key for the current user. Otherwise, this resource manages a GPG key for the specified user, and an admin token is required."
}
