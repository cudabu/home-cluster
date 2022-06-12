variable "k8s_source_template" {
    description = "Proxmox cloud-init template"
    type = string
    default = "ubuntu-2204-cloudinit-template"
}

variable "subnetmask" {
    description = "Subnet mask in CIDR notation"
    type = string
    default = "24"
}

variable "gateway" {
    description = "Default route for network"
    type = string
    default = "10.30.17.1"
}

variable "k8s_masters" {
    description = "VM variables in a dictionary"
    type = map
    default = {
        kube-1 = {
            target_node = "pve1",
            vmid = "441",
            vcpu = "2",
            memory = "4096",
            disk_size= "30G",
            ip = "10.30.17.41",
            gateway = "10.30.17.1",
            name = "kube-1.cudabu.lab"
            pool = "kube"
        },
        kube-2 = {
            target_node = "pve2",
            vmid = "442",
            vcpu = "2",
            memory = "4096",
            disk_size= "30G",
            ip = "10.30.17.42",
            gateway = "10.30.17.1",
            name = "kube-2.cudabu.lab"
            pool = "kube"
        },
        kube-3 = {
            target_node = "pve3",
            vmid = "443",
            vcpu = "2",
            memory = "4096",
            disk_size= "30G",
            ip = "10.30.17.43",
            gateway = "10.30.17.1"
            name = "kube-3.cudabu.lab"
            pool = "kube"
        }
    }
}