resource "pihole_dns_record" "create_k8s_master_dns_records" {
    for_each = var.k8s_masters
    domain = each.value.name
    ip = each.value.ip
}