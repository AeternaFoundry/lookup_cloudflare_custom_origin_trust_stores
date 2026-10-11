output "custom_origin_trust_stores_lookup_limit" {
  description = "Map of limit values across all custom_origin_trust_stores_lookup, keyed the same as var.custom_origin_trust_stores_lookup except keys with no limit are omitted"
  value       = { for k, v in data.cloudflare_custom_origin_trust_stores.custom_origin_trust_stores_lookup : k => v.limit if v.limit != null }
}
output "custom_origin_trust_stores_lookup_max_items" {
  description = "Map of max_items values across all custom_origin_trust_stores_lookup, keyed the same as var.custom_origin_trust_stores_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_custom_origin_trust_stores.custom_origin_trust_stores_lookup : k => v.max_items if v.max_items != null }
}
output "custom_origin_trust_stores_lookup_offset" {
  description = "Map of offset values across all custom_origin_trust_stores_lookup, keyed the same as var.custom_origin_trust_stores_lookup except keys with no offset are omitted"
  value       = { for k, v in data.cloudflare_custom_origin_trust_stores.custom_origin_trust_stores_lookup : k => v.offset if v.offset != null }
}
output "custom_origin_trust_stores_lookup_result" {
  description = "Map of result values across all custom_origin_trust_stores_lookup, keyed the same as var.custom_origin_trust_stores_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_custom_origin_trust_stores.custom_origin_trust_stores_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "custom_origin_trust_stores_lookup_zone_id" {
  description = "Map of zone_id values across all custom_origin_trust_stores_lookup, keyed the same as var.custom_origin_trust_stores_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_custom_origin_trust_stores.custom_origin_trust_stores_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

