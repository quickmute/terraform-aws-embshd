##comment
variable "timestamps" {
  type    = bool
  default = true
}
locals {
  timestamps_tags = var.timestamps == true ? {
    "CreationDate"    = formatdate("YYYY-MM-DD hh:mm:ssZZZZZ", timestamp())
    "ModifiedDate"    = formatdate("YYYY-MM-DD hh:mm:ssZZZZZ", timestamp())
    } : {}
}

output "timestamp"{
  value = local.timestamps_tags  
}
