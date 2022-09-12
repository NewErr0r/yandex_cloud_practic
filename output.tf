output "connect_rtr-l" {
  value = "ssh -i pt_key.pem -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null yc-user@${yandex_compute_instance.rtr-l.network_interface.0.nat_ip_address}"
}

output "connect_rtr-r" {
  value = "ssh -i pt_key.pem -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null yc-user@${yandex_compute_instance.rtr-r.network_interface.0.nat_ip_address}"
}

output "connect_isp" {
  value = "ssh -i pt_key.pem -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null yc-user@${yandex_compute_instance.isp.network_interface.0.nat_ip_address}"
}