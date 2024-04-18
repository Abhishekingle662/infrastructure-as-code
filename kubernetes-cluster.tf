resource "azure_kubernetes_cluster" "cluster" {
name = var.app_name
location = var.location
resource_group_name = azurerm_resource_group.practicum16.name
dns_prefix = var.app_name
kubernetes_version = var.kubernetes_version


default_node_pool {

name = "default"
node_count = 1
vm_size = "Standard_B2s"
}

identity {
type = "SystemAssigned"
}
}