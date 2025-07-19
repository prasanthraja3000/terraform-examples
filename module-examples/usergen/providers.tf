terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
        version = "2.5.3"
    }
    random = {
        source = "hashicorp/random"
        version = "3.7.2"
    }
  }
  backend "local" {
    path = "../state/usergenerate.tfstate"
  }
}

provider "local" {}

provider "random" {}