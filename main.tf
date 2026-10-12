data "snowflake_accounts" "accounts_lookup" {
  for_each = var.accounts_lookup

  like         = each.value.like
  with_history = each.value.with_history
}

