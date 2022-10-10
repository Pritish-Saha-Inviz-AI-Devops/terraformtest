provider "google"{
    project ="search-tf-test"
    region="asia-south1"
    credentials="temp.json"
}
provider "google-beta" {
  project = "search-tf-test"
  
  region  = "asia-south1"
}

terraform {
  required_version = ">= 0.13, < 2.0"
  backend "gcs" {
    bucket  = "search-tf-test"
    prefix  = "tf-test"
  }
}  




resource "google_pubsub_topic" "fromactions" {
    name ="fromactions"
    project = "inviz-gcp"
    
  
}
