variable "prefix"  {
  description = "The prefix which should be used for all resources in this example"
  type = string
  default = "k3s"
}
variable "location"  {
  description = "The Azure Region in which all resources in this example should be created."
  type = string
  default = "eastus"
}
variable "azure_subscription_id"  {
  description = "Your Azure subscription ID"
  type = string
  default = ""
}
variable "azure_client_id"  {
  description = "Your Azure client ID"
  type = string
  default = ""
}
variable "azure_client_secret"  {
  description = "Your Azure Client Secret"
  type = string
  default = ""
}
variable "azure_tenant_id"  {
  description = "Your Azure tenant ID"
  type = string
  default = ""
}