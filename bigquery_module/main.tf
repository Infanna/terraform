module "bigquery" {
  source  = "terraform-google-modules/bigquery/google"
  version = "5.4.2"

  dataset_id = "terraform_few"
  project_id = "one-for-all-370004"
  location   = "asia-southeast1"

  tables = [
    {
      table_id = "foo",
      schema   = null,
      time_partitioning = {
        type                     = "DAY",
        field                    = null,
        require_partition_filter = false,
        expiration_ms            = null,
      },
      range_partitioning = null,
      expiration_time    = null,
      clustering         = [],
      labels             = {},
    },
    {
      table_id = "bar",
      schema   = null,
      time_partitioning = {
        type                     = "DAY",
        field                    = null,
        require_partition_filter = false,
        expiration_ms            = null,
      },
      range_partitioning = null,
      expiration_time    = null,
      clustering         = [],
      labels             = {},
    }
  ]
}