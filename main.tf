provider "ibm" {
  region = "eu-fr2"
}

resource "random_string" "name" {
  length  = 8
  upper   = false
  lower   = true
  number  = false
  special = false
}

resource "ibm_database" "database" {
  name              = random_string.name.id
  plan              = "standard"
  location          = "eu-fr2"
  service           = "databases-for-etcd"
}
