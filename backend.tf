terraform {
  backend "gcs" {
    bucket = "bkt-terraform-scripts-state-file"
    prefix = "thc-dna-tfstate"
  }
}
