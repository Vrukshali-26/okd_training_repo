terraform {
  required_providers {
    civo = {
      source = "civo/civo"
      version = "0.10.3"
    }
  }
}

variable "token" {
  type = string
}

provider "civo" {
  token = "var.token"
  region = "LON1"
}
