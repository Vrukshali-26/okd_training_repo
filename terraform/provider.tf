# provider "civo" {
#   token = ${{ secrets.CIVO_TOKEN }}
# }

terraform {
  required_providers {
    civo = {
      source = "civo/civo"
      version = "0.10.3"
    }
  }
}

provider "civo" {
  token = ${{ secrets.CIVO_TOKEN }}
  region = "LON1"
}
