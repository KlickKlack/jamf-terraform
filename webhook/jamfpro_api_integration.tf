resource "jamfpro_api_integration" "kkco_webhook" {
  display_name                  = "kkco_webhook"
  enabled                       = true
  access_token_lifetime_seconds = 60
  authorization_scopes          = [ jamfpro_api_role.kkco_webhook.display_name ]
  depends_on                    = [ jamfpro_api_role.kkco_webhook ]
}
