# Create ISP
resource "yandex_compute_instance" "isp" {
    name        = "isp"  
    hostname    = "isp"
    zone        = var.zone

    resources {
        cores   = var.cores
        memory  = var.memory
    }

    boot_disk {
        initialize_params {
            image_id    = var.rtr-l_image_id
            size        = var.disk_size
        }
    }

    network_interface {
        subnet_id   = var.default_subnet    
        ip_address  = "10.128.0.100"
        nat         = var.nat
    }

    scheduling_policy {
        preemptible = true                            
    }

    metadata = {
    user-data           = "${data.template_file.cloud_init_lin.rendered}"
    serial-port-enable  = 1
    }
}