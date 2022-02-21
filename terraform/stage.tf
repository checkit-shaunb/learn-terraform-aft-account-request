module "stage" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws_root_stage@checkit.net"
    AccountName               = "Stage-Account"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "shaun.bradley@checkit.net"
    SSOUserFirstName          = "Stage"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Environment" = "Stage"
  }

  change_management_parameters = {
    change_requested_by = "Shaun Bradley"
    change_reason       = "Initial AWS account creation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "stage"
}
