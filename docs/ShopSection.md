# EtsyApi::ShopSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_section_id** | **Integer** | The numeric ID of a section in a specific Etsy shop. | [optional] |
| **title** | **String** | The title string for a shop section. | [optional] |
| **rank** | **Integer** | The positive non-zero numeric position of this section in the section display order for a shop, with rank 1 sections appearing first. | [optional] |
| **user_id** | **Integer** | The numeric ID of the [user](/documentation/reference#tag/User) who owns this shop section. | [optional] |
| **active_listing_count** | **Integer** | The number of active listings in one section of a specific Etsy shop. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopSection.new(
  shop_section_id: null,
  title: null,
  rank: null,
  user_id: null,
  active_listing_count: null
)
```

