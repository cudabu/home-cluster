resource "pihole_dns_record" "create_k3s_controlplane_dns_records" {
    for_each = var.k3s_controlplane
    domain = each.value.name
    ip = each.value.ip
}