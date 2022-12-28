# EtsyApi::ListingInventoryProductOffering

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offering_id** | **Integer** | The ID for the ProductOffering | [optional] |
| **quantity** | **Integer** | The quantity the ProductOffering | [optional] |
| **is_enabled** | **Boolean** | Whether or not the offering can be shown to buyers. | [optional] |
| **is_deleted** | **Boolean** | Whether or not the offering has been deleted. | [optional] |
| **price** | [**ListingInventoryProductOfferingPrice**](ListingInventoryProductOfferingPrice.md) |  | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ListingInventoryProductOffering.new(
  offering_id: null,
  quantity: null,
  is_enabled: null,
  is_deleted: null,
  price: null
)
```

