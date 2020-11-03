# Create a single node k3s cluster in Azure

1. Clone this repository
2. (Optional) create a tfvars file in the infra directory like this:
````
prefix = "k3s"
location = "eastus"
azure_subscription_id = "your-azure-subscription-id"
azure_client_id = "your-azure-client-id"
azure_client_secret = "your-azure-client-secret"
azure_tenant_id = "your-azure-tenant-id"
```
3. Make sure you have the Azure CLI installed and are logged in.
4. Change into the infra Directory
5. `terraform init`
6. `terraform apply`