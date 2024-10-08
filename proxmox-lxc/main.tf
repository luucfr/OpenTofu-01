provider "proxmox" {
  pm_api_url      = var.proxmox_api_url
  pm_user         = var.proxmox_user
  pm_password     = var.proxmox_password
  pm_tls_insecure = true
}

resource "proxmox_lxc" "debian12" {
  target_node = var.proxmox_node
  ostemplate  = var.lxc_template
  storage     = var.lxc_storage
  password    = var.lxc_password
  hostname    = var.lxc_hostname
  network {
    name = "eth0"
    ip   = var.lxc_ip
    gw   = var.lxc_gw
  }
  rootfs {
    size = var.lxc_disk_size
  }
  cpu {
    cores = var.lxc_cpu_cores
  }
  memory {
    size = var.lxc_memory_size
  }
}

resource "proxmox_firewall_rule" "allow_ssh" {
  target = "${proxmox_lxc.debian12.id}"
  action = "ACCEPT"
  source = "0.0.0.0/0"
  dest   = "0.0.0.0/0"
  proto  = "tcp"
  port   = "22"
  enable = true
}
