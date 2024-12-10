resource "jamfpro_api_integration" "jamf-trust-security-cloud-uem-connect" {
  display_name                  = "Jamf Trust (Security Cloud) - UEM Connect"
  enabled                       = true
  access_token_lifetime_seconds = 60
  authorization_scopes          = [ jamfpro_api_role.jamf-trust-security-cloud-uem-connect.display_name ]
  depends_on                    = [ jamfpro_api_role.jamf-trust-security-cloud-uem-connect ]
}
