


locals {
  host_prjs = {
    app1 = {
      id = "dev-host-app1" # without prefix
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
        "vpcaccess.googleapis.com",
        ]
       hub_project = module.dev-core-project.project_id
       hub_name    = local.ncc_dev_hub_name
       hub_group   = "edge"
       vpc-name    = "vpc-dev-app1"
       subnets = [
         {
           ip_cidr_range = "10.3.21.0/24"
           name          = "sn-devapp1-usc1-a"
           region        = var.regions.primary
         },
       ]
    },
    svc1 = {
      id = "dev-host-svc1" # without prefix
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
        "vpcaccess.googleapis.com",
        ]
       hub_project = module.dev-core-project.project_id
       hub_name    = local.ncc_dev_hub_name
       hub_group   = "center"
       vpc-name    = "vpc-dev-svc1"
       subnets = [
         {
           ip_cidr_range = "10.3.11.0/24"
           name          = "sn-devsvc1-usc1-a"
           region        = var.regions.primary
         },
       ]
    }   
  }
}