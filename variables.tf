variable "accounts_lookup" {
  description = <<EOT
Map of accounts_lookup, attributes below
Optional:
    - like
    - with_history
EOT

  type = map(object({
    like         = optional(string)
    with_history = optional(bool)
  }))
}

