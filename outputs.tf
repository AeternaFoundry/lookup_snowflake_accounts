output "accounts_lookup_id" {
  description = "Map of id values across all accounts_lookup, keyed the same as var.accounts_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_accounts.accounts_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "accounts_lookup_accounts" {
  description = "Map of accounts values across all accounts_lookup, keyed the same as var.accounts_lookup except keys with no accounts are omitted"
  value       = { for k, v in data.snowflake_accounts.accounts_lookup : k => v.accounts if v.accounts != null && length(v.accounts) > 0 }
}
output "accounts_lookup_like" {
  description = "Map of like values across all accounts_lookup, keyed the same as var.accounts_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_accounts.accounts_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "accounts_lookup_with_history" {
  description = "Map of with_history values across all accounts_lookup, keyed the same as var.accounts_lookup except keys with no with_history are omitted"
  value       = { for k, v in data.snowflake_accounts.accounts_lookup : k => v.with_history if v.with_history != null }
}

