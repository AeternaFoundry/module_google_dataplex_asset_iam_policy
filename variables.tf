variable "dataplex_asset_iam_policies" {
  description = <<EOT
Map of dataplex_asset_iam_policies, attributes below
Required:
    - asset
    - dataplex_zone
    - lake
    - policy_data
Optional:
    - location
    - project
EOT

  type = map(object({
    asset         = string
    dataplex_zone = string
    lake          = string
    policy_data   = string
    location      = optional(string)
    project       = optional(string)
  }))
}

