





module "project" {
  source = "git@github.com:leorocca-gg/modules.git//project?ref=main"
  billing_account = var.billing_account.id
  name            = "landing-prj"
  parent          = var.folder_ids.networking
  prefix          = var.prefix
  services = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "dns.googleapis.com",
    "iap.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "networkmanagement.googleapis.com",
    "networksecurity.googleapis.com",
    "servicenetworking.googleapis.com",
    "vmwareengine.googleapis.com",
    "vpcaccess.googleapis.com",
  ]
}