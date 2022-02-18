module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shaun.d.bradley@gmail.com"
    AccountName               = "shaunplayground"
    ManagedOrganizationalUnit = "root"
    SSOUserEmail              = "shaun.bradley@checkit.net"
    SSOUserFirstName          = "shaun"
    SSOUserLastName           = "playground"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
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
