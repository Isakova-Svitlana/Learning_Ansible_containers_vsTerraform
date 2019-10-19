resource "google_compute_firewall" "http-app-8081" {
  name    = "http-8081"
  network = "${var.var_network}"
allow {
    protocol = "tcp"
    ports    = ["8081"]
  }
  target_tags = ["http-app-8081"] 
}

resource "google_compute_firewall" "mgdb-27017" {
  name    = "mgdb-27017"
  network = "${var.var_network}"
allow {
    protocol = "tcp"
    ports    = ["27017"]
  }
  target_tags = ["mgdb-27017"] 
}