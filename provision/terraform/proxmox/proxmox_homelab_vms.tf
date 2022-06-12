resource "proxmox_vm_qemu" "ubunutu-k3s-controlplanes" {
    for_each = var.k8s_masters
    vmid = each.value.vmid
    name = each.value.name
    desc = each.value.name
    target_node = each.value.target_node
    os_type = "cloud-init"
    clone = var.k8s_source_template
    full_clone = false # enable full clones
    agent = 0 # update image to include agent
    sockets = "1"
    cores = each.value.vcpu
    cpu = "host"
    memory = each.value.memory
    scsihw = "virtio-scsi-pci"
    disk {
        size = each.value.disk_size
        type = "virtio"
        storage = "unraid"
    }
    network {
        model = "virtio"
        bridge = "vmbr0"
    }

    # cloud init section
    ipconfig0 = "ip=${each.value.ip}/${var.subnetmask},gw=${var.gateway}"
}