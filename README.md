```markdown
# 🌐 Azure IaC Samples

🚀 This repository contains **Infrastructure as Code (IaC)** examples for provisioning and managing Azure resources using **Terraform** and **Bicep**. Whether you're building for Azure-native or multi-cloud environments, these samples will help you get started.

---

## 📂 Repository Structure

```plaintext
Azure-IaC-Samples/
├── terraform/             # Terraform-based IaC examples
│   ├── main.tf            # Core configuration for Terraform
│   ├── network.tf         # Virtual Network with multiple subnets
│   ├── storage.tf         # Azure Storage Account
│   ├── keyvault.tf        # Azure Key Vault with a secret
├── bicep/                 # Bicep-based IaC examples
│   ├── main.bicep         # Core configuration for Bicep
│   ├── network.bicep      # Virtual Network with multiple subnets
│   ├── storage.bicep      # Azure Storage Account
│   ├── keyvault.bicep     # Azure Key Vault with a secret
├── README.md              # Repository overview and details
```

---

## 🌟 Examples

### 🛠️ Terraform

1. **📡 Virtual Network with Subnets**
   - **Path:** `terraform/network.tf`
   - **Description:** Creates a virtual network with two subnets, designed for secure resource segmentation.
   - **Code Snippet:**
     ```hcl
     resource "azurerm_virtual_network" "example" {
       name                = "example-vnet"
       location            = azurerm_resource_group.example.location
       resource_group_name = azurerm_resource_group.example.name
       address_space       = ["10.0.0.0/16"]
     }
     ```

2. **📦 Azure Storage Account**
   - **Path:** `terraform/storage.tf`
   - **Description:** Provisions a secure Azure Storage Account with LRS replication.
   - **Code Snippet:**
     ```hcl
     resource "azurerm_storage_account" "example" {
       name                     = "examplestorageacct"
       resource_group_name      = azurerm_resource_group.example.name
       location                 = azurerm_resource_group.example.location
       account_tier             = "Standard"
       account_replication_type = "LRS"
     }
     ```

3. **🔑 Azure Key Vault with a Secret**
   - **Path:** `terraform/keyvault.tf`
   - **Description:** Deploys an Azure Key Vault with a sample secret.
   - **Code Snippet:**
     ```hcl
     resource "azurerm_key_vault_secret" "example" {
       name         = "example-secret"
       value        = "SuperSecretValue"
       key_vault_id = azurerm_key_vault.example.id
     }
     ```

---

### 🎯 Bicep

1. **📡 Virtual Network with Subnets**
   - **Path:** `bicep/network.bicep`
   - **Description:** Configures a virtual network with two subnets using concise Bicep syntax.
   - **Code Snippet:**
     ```bicep
     resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
       name: 'example-vnet'
       location: resourceGroup().location
       properties: {
         addressSpace: {
           addressPrefixes: ['10.0.0.0/16']
         }
         subnets: [
           {
             name: 'subnet1'
             properties: { addressPrefix: '10.0.1.0/24' }
           }
           {
             name: 'subnet2'
             properties: { addressPrefix: '10.0.2.0/24' }
           }
         ]
       }
     }
     ```

2. **📦 Azure Storage Account**
   - **Path:** `bicep/storage.bicep`
   - **Description:** Deploys a scalable Azure Storage Account using Bicep.
   - **Code Snippet:**
     ```bicep
     resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
       name: 'examplestorageacct'
       location: resourceGroup().location
       sku: {
         name: 'Standard_LRS'
       }
       kind: 'StorageV2'
     }
     ```

3. **🔑 Azure Key Vault with a Secret**
   - **Path:** `bicep/keyvault.bicep`
   - **Description:** Creates an Azure Key Vault and securely stores a sample secret.
   - **Code Snippet:**
     ```bicep
     resource keyVault 'Microsoft.KeyVault/vaults@2021-10-01' = {
       name: 'example-keyvault'
       location: resourceGroup().location
       properties: {
         sku: { family: 'A'; name: 'standard' }
         tenantId: subscription().tenantId
       }
     }
     resource secret 'Microsoft.KeyVault/vaults/secrets@2021-10-01' = {
       name: 'example-secret'
       parent: keyVault
       properties: {
         value: 'SuperSecretValue'
       }
     }
     ```

---

## 🚀 Getting Started

### Prerequisites
- **Terraform CLI:** [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- **Azure CLI:** [Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- **Bicep:** [Install Bicep](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/install)

### Usage
1. Clone the repository:
   ```bash
   git clone git@github.com:satishgonella2024/Azure-IaC-Samples.git
   cd Azure-IaC-Samples
   ```

2. Run examples:
   - **Terraform:**
     ```bash
     terraform init
     terraform plan
     terraform apply
     ```
   - **Bicep:**
     ```bash
     az deployment group create \
       --name ExampleDeployment \
       --resource-group <resource-group> \
       --template-file <file-name>.bicep
     ```

---

## 🤝 Contributing

Contributions are welcome! Feel free to fork the repository, submit pull requests, or open issues.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

## 👨‍💻 Author

Created and maintained by [**Satish Gonella**](https://github.com/satishgonella2024).

---

## 📢 Connect

🌐 [GitHub Profile](https://github.com/satishgonella2024)  
✍️ [Medium Blog](https://medium.com/@ssatish.gonella)  
```

---
