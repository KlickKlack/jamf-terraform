resource "jamfpro_webhook" "ComputerInventoryCompleted" {
  count               = var.ENABLE_WEBHOOK_COMPUTER_INVENTORY_COMPLETED == true ? 1 : 0
  name                = "KKCO_Webhook_ComputerInventoryCompleted"
  enabled             = true
  url                 = "${var.WEBHOOK_ENDPOINT}ComputerInventoryCompleted"
  content_type        = "application/json"
  event               = "ComputerInventoryCompleted"
  connection_timeout  = 5
  read_timeout        = 2
  authentication_type = "HEADER"
  depends_on          = [ jamfpro_api_integration.kkco_webhook ]
}

resource "jamfpro_webhook" "MobileDeviceInventoryCompleted" {
  count               = var.ENABLE_WEBHOOK_MOBILE_INVENTORY_COMPLETED == true ? 1 : 0
  name                = "KKCO_Webhook_MobileDeviceInventoryCompleted"
  enabled             = true
  url                 = "${var.WEBHOOK_ENDPOINT}MobileDeviceInventoryCompleted"
  content_type        = "application/json"
  event               = "MobileDeviceInventoryCompleted"
  connection_timeout  = 5
  read_timeout        = 2
  authentication_type = "HEADER"
  depends_on          = [ jamfpro_api_integration.kkco_webhook ]
}

resource "jamfpro_webhook" "MobileDeviceEnrolled" {
  count               = var.ENABLE_WEBHOOK_MOBILE_ENROLLED == true ? 1 : 0
  name                = "KKCO_Webhook_MobileDeviceEnrolled"
  enabled             = true
  url                 = "${var.WEBHOOK_ENDPOINT}MobileDeviceEnrolled"
  content_type        = "application/json"
  event               = "MobileDeviceEnrolled"
  connection_timeout  = 5
  read_timeout        = 2
  authentication_type = "HEADER"
  depends_on          = [ jamfpro_api_integration.kkco_webhook ]
}
