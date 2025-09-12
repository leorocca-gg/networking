





module "net-firewall-policy" {
  source = "git@github.com:leorocca-gg/modules//net-firewall-policy?ref=main"
  name      = "net-policies"
  parent_id = var.folder_ids.security
  #region    = "global"
  attachments = {
    networkroot = var.folder_ids.networking 
  }
  factories_config = {
    cidr_file_path          = var.factories_config.firewall.cidr_file
    egress_rules_file_path  = "${var.factories_config.firewall.policy_rules}/data/hierarchical-egress-rules.yaml"
    ingress_rules_file_path = "${var.factories_config.firewall.policy_rules}/data/hierarchical-ingress-rules.yaml"
  }
  #security_profile_group_ids = var.security_profile_groups
}
