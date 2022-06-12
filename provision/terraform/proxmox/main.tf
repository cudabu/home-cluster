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

provider "proxmox" {
    pm_api_url = "https://pve1.cudabu.lab:8006/api2/json"
    pm_api_token_id = var.pm_api_token_id
    pm_api_token_secret = var.pm_api_token_secret
    pm_tls_insecure = true
}

provider "pihole" {
    url = "http://10.30.17.12"
    api_token = var.pihole_api_token
}