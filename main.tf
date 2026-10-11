resource "google_dataplex_asset_iam_policy" "dataplex_asset_iam_policies" {
  for_each = var.dataplex_asset_iam_policies

  asset         = each.value.asset
  dataplex_zone = each.value.dataplex_zone
  lake          = each.value.lake
  policy_data   = each.value.policy_data
  location      = each.value.location
  project       = each.value.project
}

