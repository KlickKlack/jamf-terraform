resource "jamfpro_api_role" "kkco_webhook" {
  display_name = "kkco_webhook"
  privileges   = [
    "Change Password",
    "Read Advanced Computer Searches",
    "Read Advanced Mobile Device Searches",
    "Read Buildings",
    "Read Cache",
    "Read Categories",
    "Read Change Management",
    "Read Cloud Distribution Point",
    "Read Computer Check-In",
    "Read Computer Extension Attributes",
    "Read Computer Security",
    "Read Computers",
    "Read Departments",
    "Read Directory Bindings",
    "Read Distribution Points",
    "Read eBooks",
    "Read iBeacon",
    "Read Mobile Device Extension Attributes",
    "Read Mobile Devices",
    "Read Network Integration",
    "Read Network Segments",
    "Read Packages",
    "Read Push Certificates",
    "Read Scripts",
    "Read Sites",
    "Read Webhooks",
    "Send Blank Pushes to Mobile Devices",
    "Send Device Information Command",
    "Send Inventory Requests to Mobile Devices",
    "Send Mobile Device Diagnostics and Usage Reporting and App Analytics Commands",
    "Send Mobile Device Set Device Name Command",
    "Send Mobile Device Set Wallpaper Command",
    "Send Set Timezone Command",
    "Update Computer Extension Attributes",
    "Update Computers",
    "Update Mobile Device Extension Attributes",
    "Update Mobile Devices",
    "Update Packages",
    "Update Scripts",
    "View MDM command information in Jamf Pro API"
  ]
}
