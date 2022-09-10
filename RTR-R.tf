# Create RTR-R
resource "yandex_compute_instance" "rtr-r" {
    name        = "rtr-r"  
    hostname    = "rtr-r"
    zone        = var.zone

    resources {
        cores   = var.cores
        memory  = var.memory
    }

    boot_disk {
        initialize_params {
            image_id    = var.rtr-r_image_id
            size        = var.disk_size
        }
    }

    network_interface {
        subnet_id   = yandex_vpc_subnet.vnet-subnet_private_right.id
        ip_address  = "172.16.1.100"
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