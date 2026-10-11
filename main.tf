data "cloudflare_custom_origin_trust_stores" "custom_origin_trust_stores_lookup" {
  for_each = var.custom_origin_trust_stores_lookup

  limit     = each.value.limit
  max_items = each.value.max_items
  offset    = each.value.offset
  zone_id   = each.value.zone_id
}

