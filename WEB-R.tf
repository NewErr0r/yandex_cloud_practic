# Create WEB-R
resource "yandex_compute_instance" "web-r" {
    name        = "web-r"  
    hostname    = "web-r"
    zone        = var.zone

    resources {
        cores         = var.cores
        memory        = var.memory
        core_fraction = var.core_fraction
    }

    boot_disk {
        initialize_params {
            image_id      = var.rtr-r_image_id
            size          = var.disk_size
        }
    }

    network_interface {
        subnet_id   = yandex_vpc_subnet.vnet-subnet_private_right.id
        ip_address  = "172.16.1.200"
    }

    scheduling_policy {
        preemptible = true                            
    }

    metadata = {
    user-data = "${data.template_file.cloud_init_lin.rendered}"
    serial-port-enable  = 1
    }
}