variable "custom_origin_trust_stores_lookup" {
  description = <<EOT
Map of custom_origin_trust_stores_lookup, attributes below
Optional:
    - limit
    - max_items
    - offset
    - zone_id
EOT

  type = map(object({
    limit     = optional(number)
    max_items = optional(number)
    offset    = optional(number)
    zone_id   = optional(string)
  }))
}

