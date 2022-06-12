terraform {
    required_providers {
    proxmox = {
        source = "telmate/proxmox"
        version = "2.9.10"
    }
    pihole = {
    source = "ryanwholey/pihole"
    }
    }
}

provider "pihole" {
    url = "http://10.30.17.12"
} 

provider "proxmox" {
    pm_api_url = "https://pve1.cudabu.lab:8006/api2/json"
    pm_tls_insecure = true
}