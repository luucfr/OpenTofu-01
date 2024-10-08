variable "proxmox_api_url" {
  description = "URL de l'API Proxmox"
  type        = string
}

variable "proxmox_user" {
  description = "Nom d'utilisateur Proxmox"
  type        = string
}

variable "proxmox_password" {
  description = "Mot de passe de l'utilisateur Proxmox"
  type        = string
  sensitive   = true
}

variable "proxmox_node" {
  description = "Noeud Proxmox cible"
  type        = string
}

variable "lxc_template" {
  description = "Template LXC (ex: local:vztmpl/debian-12-standard_12.0-1_amd64.tar.zst)"
  type        = string
}

variable "lxc_storage" {
  description = "Nom du stockage LXC (ex: local-lvm)"
  type        = string
}

variable "lxc_password" {
  description = "Mot de passe root pour le conteneur LXC"
  type        = string
}

variable "lxc_hostname" {
  description = "Nom d'hôte du conteneur LXC"
  type        = string
}

variable "lxc_ip" {
  description = "Adresse IP du conteneur LXC"
  type        = string
}

variable "lxc_gw" {
  description = "Passerelle par défaut du conteneur LXC"
  type        = string
}

variable "lxc_disk_size" {
  description = "Taille du disque du conteneur LXC (ex: 8G)"
  type        = string
}

variable "lxc_cpu_cores" {
  description = "Nombre de cœurs CPU du conteneur"
  type        = number
}

variable "lxc_memory_size" {
  description = "Taille de la mémoire RAM du conteneur en MB"
  type        = number
}
