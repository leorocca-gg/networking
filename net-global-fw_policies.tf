





module "net-firewall-policy" {
  source = "git@github.com:leorocca-gg/modules//net-firewall-policy?ref=main"
  name      = "net-policies"
  parent_id = var.folder_ids.networking
  #region    = "global"
  attachments = {
    networkroot = var.folder_ids.networking 
  }
  factories_config = {
    cidr_file_path          = var.factories_config.firewall.cidr_file
    egress_rules_file_path  = "${var.factories_config.firewall.hierarchical.egress_rules}"
    ingress_rules_file_path = "${var.factories_config.firewall.hierarchical.ingress_rules}"
  }
  #security_profile_group_ids = var.security_profile_groups
}
