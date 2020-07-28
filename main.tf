variable "timestamps" {
  type    = bool
  default = false
}
locals {
  timestamps_tags = var.timestamps == true ? {
    "CreationDate"    = formatdate("YYYY-MM-DD hh:mm:ssZZZZZ", timestamp())
    "ModifiedDate"    = formatdate("YYYY-MM-DD hh:mm:ssZZZZZ", timestamp())
    } : {}
}
