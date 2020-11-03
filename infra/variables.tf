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
  description = "your-azure-subscription-id"
  type = string
  default = ""
}
variable "azure_client_id"  {
  description = "your-azure-client-id"
  type = string
  default = ""
}
variable "azure_client_secret"  {
  description = "your-azure-client-secret"
  type = string
  default = ""
}
variable "azure_tenant_id"  {
  description = "your-azure-tenant-id"