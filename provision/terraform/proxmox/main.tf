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
    pm_api_url = "https://10.30.17.21:8006/api2/json"
    pm_tls_insecure = true
}

provider "pihole" {
    url = "http://10.30.17.12"
    api_token = "998ed4d621742d0c2d85ed84173db569afa194d4597686cae947324aa58ab4bb"
} 