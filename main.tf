provider "google" {
  project     = "dev-demo-proj-1-id"  #  Replace with your Google Cloud project ID
  region      = "us-central1"        # Choose the region for your bucket
}

resource "google_storage_bucket" "my_bucket" {
  name          = "my-unique-bucket-name"  # Ensure this name is globally unique
  location      = "europe-west1"
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true  # Prevent accidental destruction of the bucket
  }
}
