resource "random_string" "name" {
  length  = 16
  upper   = false
  lower   = true
  number  = false
  special = false
}

resource "ibm_database" "database" {
  name              = "ibmdb$random_string.result"
  plan              = "standard"
  location          = "us-south"
  service           = "databases-for-etcd"
}
