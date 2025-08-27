locals {
  database_configs = {
    main_database = {
      server_name = "sql-${var.project}-${var.environment}"
      database_name = "db-${var.project}-${var.environment}"
      admin_username = "sqladmin"
      admin_password = "password123"
      max_size_gb = 2
      sku_name = "Basic"
    }
  }
}
