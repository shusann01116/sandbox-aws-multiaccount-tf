locals {
  environments = [
    "Development",
    "Staging",
    "Production"
  ]
  name-ouid-map = {
    "Development" = "ou-1d3y-frhs6o7b"
    "Staging"     = "ou-1d3y-jlbtufsh"
    "Production"  = "ou-1d3y-bsowcy74"
  }
}

data "aws_organizations_organization" "org" {}

resource "random_id" "account" {
  for_each = toset(local.environments)

  keepers = {
    environment = terraform.workspace
  }

  byte_length = 8
}

resource "aws_organizations_account" "management_account" {
  email = "${var.initial_account_gmail["management"]}+${random_id.account.id}@gmail.com"
}
