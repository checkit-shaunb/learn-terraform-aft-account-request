module "prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws_root_prod@checkit.net"
    AccountName               = "Prod-Account"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "shaun.bradley@checkit.net"
    SSOUserFirstName          = "Prod"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Environment" = "Prod"
  }

  change_management_parameters = {
    change_requested_by = "Shaun Bradley"
    change_reason       = "Initial AWS account creation"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "Prod"
}
