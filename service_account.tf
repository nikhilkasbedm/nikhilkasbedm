module "sa-composer-dev-01" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = local.project-id
  description   = "Service account used by Cloud Composer."
  names         = local.sa-name-composer
  project_roles = local.project-roles-composer-sa-dev
}
  
locals{
    sa-name-composer = ["sa-composer1"]
    project-roles-composer-sa-dev = [
    "${local.project-id}=>roles/bigquery.jobUser",        # Bigquery Job User
    "${local.project-id}=>roles/composer.worker",         # Composer Worker
    "${local.project-id}=>roles/iam.serviceAccountUser",  # Service Account User
    "${local.project-id}=>roles/logging.logWriter",       # Logs Writer
    "${local.project-id}=>roles/monitoring.metricWriter", # Monitoring Metric Writer
    "${local.project-id}=>roles/composer.user"            # Composer User
  ]
}
