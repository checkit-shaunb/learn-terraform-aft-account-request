module "kernplayground" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "kernow5000@gmail.com"
    AccountName               = "kernorgtest"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "shaun.bradley@checkit.net"
    SSOUserFirstName          = "kern"
    SSOUserLastName           = "orgtest"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Creator" = "Shaun Bradley"
  }

  change_management_parameters = {
    change_requested_by = "Shaun Bradley"
    change_reason       = "Working out acct deletion and state"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "shaunplayground"
}
