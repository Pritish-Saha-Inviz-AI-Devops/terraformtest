provider "google"{
    project ="inviz-gcp"
    region="asia-south1"
}

resource "google_pubsub_topic" "fromactions" {
    name ="fromactions"
    project = "inviz-gcp"
    
  
}