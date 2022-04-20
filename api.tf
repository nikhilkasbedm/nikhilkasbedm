module "tenet-tf-api-dev-project" {
  source     = "terraform-google-modules/project-factory/google//modules/project_services"
  version    = "10.1.1"
  project_id = "moonlit-watch-339513"
  activate_apis = [
    "bigquery.googleapis.com",          # Bigquery API
    "storage-component.googleapis.com", # Cloud Storage API 
    "composer.googleapis.com",               # Cloud Composer API
    "cloudresourcemanager.googleapis.com", # Cloud Resource Manager API
    "sql-component.googleapis.com",        # Cloud SQL API
    "sqladmin.googleapis.com",             # Cloud SQLAdmin API
    "compute.googleapis.com",              # Compute Engine API
    "datacatalog.googleapis.com",          # Cloud Data Catalog API
    "dlp.googleapis.com",                  # Cloud Data Loss Prevention (DLP) API
    "dataflow.googleapis.com",               # DataFlow API
    "container.googleapis.com",         # Kubernetes Engine API
    "osconfig.googleapis.com",          # VM Manager (OS Config API)
    "secretmanager.googleapis.com",     # Secret Manager API
    "servicenetworking.googleapis.com", # Service Networking API
    "monitoring.googleapis.com",        # Stackdriver Monitoring API
    "logging.googleapis.com",    # Cloud Logging (Stackdriver Logging) API
    "iam.googleapis.com"
  ]
}
