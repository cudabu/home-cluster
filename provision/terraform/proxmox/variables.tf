variable "k8s_source_template" {
    description = "Proxmox cloud-init template"
    type = string
}

variable "ssh_user" {
    description = "Initial ssh root user"
    type = string
}

variable "ssh_password" {
    description = "Initial ssh root password"
    type = string
}

variable "ssh_pub_key" {
    description = "User pubic key"
    type = string
}

variable "k8s_masters" {
    description = "vm variables in a dictionary"
    type = map(any)
}