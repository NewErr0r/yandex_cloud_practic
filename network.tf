# Ceate a virtual network within the resource group
resource "yandex_vpc_network" "vnet-left" {
    name    = "vnet-left"
}

# Create a virtual subnet 
resource "yandex_vpc_subnet" "vnet-subnet_private_left" {
    name            = "vnet-subnet_private_left"  
    zone            = "ru-central1-a"
    network_id      = yandex_vpc_network.vnet-left.id
    v4_cidr_blocks  = ["10.0.1.0/24"]
}

# Ceate a virtual network within the resource group
resource "yandex_vpc_network" "vnet-right" {
    name    = "vnet-right"
}

# Create a virtual subnet 
resource "yandex_vpc_subnet" "vnet-subnet_private_right" {
    name            = "vnet-subnet_private_right"  
    zone            = "ru-central1-a"
    network_id      = yandex_vpc_network.vnet-right.id
    v4_cidr_blocks  = ["172.16.1.0/24"]
}