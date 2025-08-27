locals {
  networking = {
    address_space = ["10.0.0.0/16"]
    dns_servers = []
    
    subnets = {
      gateway = {
        address_prefixes = ["10.0.0.0/27"]
        private_endpoint_network_policies = "Disabled"
        private_link_service_network_policies_enabled = false
        service_endpoints = []
        service_endpoint_policy_ids = []
      }
      management = {
        address_prefixes = ["10.0.1.0/24"]
        private_endpoint_network_policies = "Disabled"
        private_link_service_network_policies_enabled = false
        service_endpoints = []
        service_endpoint_policy_ids = []
      }
      compute = {
        address_prefixes = ["10.0.2.0/24"]
        private_endpoint_network_policies = "Disabled"
        private_link_service_network_policies_enabled = false
        service_endpoints = []
        service_endpoint_policy_ids = []
      }
      data = {
        address_prefixes = ["10.0.3.0/24"]
        private_endpoint_network_policies = "Disabled"
        private_link_service_network_policies_enabled = false
        service_endpoints = []
        service_endpoint_policy_ids = []
      }
    }
  }
}
