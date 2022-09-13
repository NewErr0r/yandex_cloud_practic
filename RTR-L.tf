# Create RTR-L
resource "yandex_compute_instance" "rtr-l" {
    name        = "rtr-l"  
    hostname    = "rtr-l"
    zone        = var.zone

    resources {
        cores         = var.cores
        memory        = var.memory
        core_fraction = var.core_fraction
    }

    boot_disk {
        initialize_params {
            image_id      = var.rtr-l_image_id
            size          = var.disk_size
        }
    }

    network_interface {
        subnet_id   = yandex_vpc_subnet.vnet-subnet_private_left.id
        ip_address  = "10.0.1.100"
        nat         = var.nat
    }

    scheduling_policy {
        preemptible = true                            
    }

    metadata = {
    user-data = "${data.template_file.cloud_init_lin.rendered}"
    serial-port-enable  = 1
    }
}