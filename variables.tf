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

variable "default_subnet" {
    type    = string
    default = "e9b9iosa2umis05ld5gu"    # default-ru-central1-a
}