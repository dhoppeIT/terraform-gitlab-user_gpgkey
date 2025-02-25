variable "key" {
  type        = string
  description = "The armored GPG public key"
}

variable "user_id" {
  type        = number
  default     = null
  description = "The ID of the user to add the GPG key to"
}
