



module "dev-host-prjs" {
  source = "git@github.com:leorocca-gg/modules.git//project-spoke?ref=main"
  for_each = local.host_prjs
  billing_account = var.billing_account.id
  name            = each.value.id
  parent          = var.folder_ids.networking
  prefix          = var.prefix
  shared_vpc_host = true
  shared_vpc_host_config = {
    enabled = true
  }
  services = each.value.services
  ncc_config = {
    hub_project = each.value.hub_project
    hub_name    = each.value.hub_name
    hub_group   = each.value.hub_group
  }     
  vpc-name      = each.value.vpc-name
  subnets       = each.value.subnets
}
