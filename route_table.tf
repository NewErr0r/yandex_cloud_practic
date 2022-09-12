resource "yandex_vpc_route_table" "route-left" {
    name       = "route-left"
    network_id = "${yandex_vpc_network.vnet-left.id}"

    static_route {
      destination_prefix = "0.0.0.0/0"
      next_hop_address   = "10.0.1.100" 
    }
}

resource "yandex_vpc_route_table" "route-right" {
    name       = "route-right"
    network_id = "${yandex_vpc_network.vnet-right.id}"

    static_route {
      destination_prefix = "0.0.0.0/0"
      next_hop_address   = "172.16.1.100" 
    }
}