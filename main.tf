resource "random_id" "name" {
  byte_length = 8
}

resource "ibm_database" "database" {
  name              = "ibm-db-$random_id.name.hex"
  plan              = "standard"
  location          = "us-south"
  service           = "databases-for-etcd"
}
