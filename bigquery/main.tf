terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.48.0"
    }
  }
}

provider "google" {
  project = "one-for-all-370004"
  region  = "asia-southeast1"
}

resource "google_bigquery_dataset" "default" {
  dataset_id                  = "few_dataset_by_terraform"
  description                 = "This is a test description"
  location                    = "asia-southeast1"
  default_table_expiration_ms = 3600000
}

resource "google_bigquery_table" "default" {
  dataset_id          = google_bigquery_dataset.default.dataset_id
  table_id            = "few_table"
  deletion_protection = false
  schema              = <<EOF
[
  {
    "name": "permalink",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "The Permalink"
  }
]
EOF

}
