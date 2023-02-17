output "role_grant_all_read_results" {
  description = "The SnowSQL query result from the read statements."
  value       = try(jsondecode(nonsensitive(snowsql_exec.role_grant_all.read_results)), null)
}