ssh_user = "ansible"
ssh_pub_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAqPH24H9pq8uURQesqlkarb2uLsJK5RgsfDeP2aNv1f cudabu@dev"
ssh_password = "ansible"

k8s_source_template = "ubuntu-cloud"

k8s_masters = {
    n1 = { target_node = "pve1", vmid = "441", vpcu = "2", memory = "4096", disk_size= "30G", name ="kube-1.cudabu.lab", ip = "10.30.17.41", mask = "24", nameserver = "10.17.30.12", gw = "10.30.17.1" },
    n2 = { target_node = "pve2", vmid = "442", vpcu = "2", memory = "4096", disk_size= "30G", name ="kube-2.cudabu.lab", ip = "10.30.17.42", mask = "24", nameserver = "10.17.30.12", gw = "10.30.17.1" },
    n3 = { target_node = "pve3", vmid = "443", vpcu = "2", memory = "4096", disk_size= "30G", name ="kube-3.cudabu.lab", ip = "10.30.17.43", mask = "24", nameserver = "10.17.30.12", gw = "10.30.17.1" }
}

firewalld_k8s_config = [
    "sudo apt install firewalld",
    "sudo systemctl enable --now firewalld",
    "sudo firewall-cmd --permanent --add-port=6443/tcp",
    "sudo firewall-cmd --permanent --add-port=2379-2380/tcp",
    "sudo firewall-cmd --permanent --add-port=10250/tcp",
    "sudo firewall-cmd --permanent --add-port=10251/tcp",
    "sudo firewall-cmd --permanent --add-port=10252/tcp",
    "sudo firewall-cmd --permanent --add-port=10255/tcp",
    "sudo firewall-cmd --permanent --add-port=8472/udp",
    "sudo firewall-cmd --add-masquerade --permanent",
    "sudo firewall-cmd --permanent --add-port=30000-32767/tcp # only if you want NodePorts exposed on control plane IP as well",
    "sudo systemctl restart firewalld"
]

