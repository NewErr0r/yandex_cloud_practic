variable "zone" {
    type    = string 
    default = "ru-central1-a"  
}

variable "cores" {
    type    = number
    default = 2
}

variable "memory" {
    type    = number
    default = 2
}

variable "rtr-l_image_id" {
    type    = string
    default = "fd8jhbshko77ad2m9akq"  
}

variable "rtr-r_image_id" {
    type    = string
    default = "fd8jhbshko77ad2m9akq"  
}

variable "disk_size" {
    type    = number
    default = 20
}

variable "nat" {
    type    = bool
    default = true
  
}