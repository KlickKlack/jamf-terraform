terraform {
  required_providers {
    jamfpro = {
      source = "deploymenttheory/jamfpro"
      version = "~> 0.6"
    }
  }
}

provider "jamfpro" {
  auth_method                = "basic"
  jamfpro_instance_fqdn      = var.JAMF_URL
  basic_auth_username        = var.JAMF_USERNAME
  basic_auth_password        = var.JAMF_PASSWORD
  hide_sensitive_data        = true
  jamfpro_load_balancer_lock = true
  enable_client_sdk_logs     = true
  client_sdk_log_export_path = var.CLIENT_SDK_LOG_PATH
}
