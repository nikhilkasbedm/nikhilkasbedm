module "bucket-test" {
  source  = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
  version = "~> 1.3"

  name       = "nikhil-this-is-your-project"
  project_id = "moonlit-watch-339513"
  location   = "us-central1"
  versioning = false
  storage_class = "STANDARD"
    }
