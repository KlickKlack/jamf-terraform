# Jamf Terraform

This repo only provides integrations with Terraform script or the components managed by or customers of KlickKlack Co., Ltd.

## General Environments Configuring

- `TF_VAR_JAMF_URL`
    > The Jamf Pro URL, e.g. `https://some-example-instance.jamfcloud.com/`
- `TF_VAR_JAMF_USERNAME`
    > Jamf Pro Admin Username
- `TF_VAR_JAMF_PASSWORD`
    > Jamf Pro Admin Password

## How to use

- `webhook` is for KKCO Webhook use
- `SecurityCloud-UEM` is for integrate to Jamf Security Cloud use

All of each component can be entered into the folder, and after you set up environment variables, you can use `terraform init -upgrade && terraform apply` to deploy on your Jamf Pro instance.

### KKCO Webhook

This is the main component that triggers the KKCO Webhook, processes Jamf Pro Inventory data, and provides additional features for KlickKlack Co., Ltd's customers.

#### Additional Environments for Configuring KKCO Webhook

- `TF_VAR_WEBHOOK_ENDPOINT`
    > KKCO Webhook URL, we will provide the current endpoint for you
- `TF_VAR_ENABLE_WEBHOOK_COMPUTER_INVENTORY_COMPLETED`
    > Well create a webhook for processing the Computer Inventory Completed event, the value only accepts `true` or `false`, and the default is `false`  
    > For the following features need this var set to `true`
    > - Computer auto rename to match a CSV feed URL providing information or any attribute fields from Jamf Pro Inventory
    > - Filling back Asset tag data from a CSV feed
    > - Computer IP/CIDR location check with static group assign
- `TF_VAR_ENABLE_WEBHOOK_MOBILE_INVENTORY_COMPLETED`
    > Well create a webhook for processing Mobile Inventory Completed event, the value only accepts `true` or `false`, and the default is `false`  
    > For the following features need this var set to `true`
    > - Mobile auto rename to match a CSV feed URL providing information or any attribute fields from Jamf Pro Inventory
    > - Filling back Asset tag data from a CSV feed
    > - Mobile IP/CIDR location check with static group assign
    > - Auto activation eSIM on iOS/iPadOS devices which assigned via a CSV feed
- `TF_VAR_ENABLE_WEBHOOK_MOBILE_ENROLLED`
    > Well create a webhook for processing the Mobile Enrolled event, the value only accepts `true` or `false`, and the default is `false`  
    > For the following features need this var set to `true`
    > - Auto activation eSIM on iOS/iPadOS devices which assigned via a CSV feed

### Security Cloud UEM

This is only providing a simple way to [configuring UEM Connect for Jamf Pro](https://learn.jamf.com/bundle/jamf-security-cloud-setup-guide/page/UEM_JamfPro_Establishing_UEM_Connectivity.html) to meet the requirements of privileges

#### Additional Environments for Configuring Security Cloud UEM

There is no need to configure additional environment variables.
