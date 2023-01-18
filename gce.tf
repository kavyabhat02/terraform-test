provider "google" {
  project     = "nitk-automigration"
}


resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "t2-micro"
  zone         = "us-east1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
  }
}
