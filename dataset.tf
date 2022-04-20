module "bigquery" {
  source       = "terraform-google-modules/bigquery/google"
  version      = "5.0.0"
  for_each     = toset(local.dev_bq_dataset_names)
  dataset_id   = each.key
  dataset_name = each.key
  description  = "Dataset"
  project_id   = "moonlit-watch-339513"
  location     = "us-central1"
  access       = []
}

locals{
  dev_bq_dataset_names = ["test_12","blah","blah_blah"]
}
  
