module "shaunplayground" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shaun.d.bradley@gmail.com"
    AccountName               = "shaunplayground"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "shaun.d.bradley@gmail.com"
    SSOUserFirstName          = "shaun"
    SSOUserLastName           = "playground"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Creator" = "shaun"
  }

  change_management_parameters = {
    change_requested_by = "Shaun Bradley"
    change_reason       = "Testing another account creation and deletion"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "shaunplayground"
}
