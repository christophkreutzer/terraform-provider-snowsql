resource "snowsql_exec" "role" {
  name = "my_role"

  create {
    statements = "CREATE ROLE IF NOT EXISTS my_role"
  }

  read {
    statements = "SHOW ROLES LIKE 'my_role'"
  }

  update {
    statements = "ALTER ROLE IF EXISTS my_role SET COMMENT = 'updated with terraform'"
  }

  delete {
    statements = "DROP ROLE IF EXISTS my_role"
  }
}