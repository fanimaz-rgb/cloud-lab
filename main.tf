variable "compartment_id" {}

provider "oci" {
  region = "eu-frankfurt-1"
}

resource "oci_core_vcn" "demo" {
  compartment_id = var.compartment_id
  cidr_block     = "10.1.0.0/16"
  display_name   = "terraform-demo"
}
