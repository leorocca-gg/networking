

### ULAN 1

data "google_compute_network" "vpc-ulan1" {
  name = "vpc-ulan1"
  project = "chspoc-landing-prj"
}

data "google_compute_subnetwork" "sn-ulan1" {
  name   = "sn-ulan1-usc1-a"
  region = "us-central1"
  project = "chspoc-landing-prj"  
}

### ULAN 1

data "google_compute_network" "vpc-ulan2" {
  name = "vpc-ulan2"
  project = "chspoc-landing-prj"
}

data "google_compute_subnetwork" "sn-ulan2" {
  name   = "sn-ulan2-use4-a"
  region = "us-east4"
  project = "chspoc-landing-prj"
}