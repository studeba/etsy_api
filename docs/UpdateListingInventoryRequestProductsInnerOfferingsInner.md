# EtsyApi::UpdateListingInventoryRequestProductsInnerOfferingsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price** | **Float** | The price of the product. |  |
| **quantity** | **Integer** | How many of this product are available? |  |
| **is_enabled** | **Boolean** | True if the offering is shown to buyers |  |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::UpdateListingInventoryRequestProductsInnerOfferingsInner.new(
  price: null,
  quantity: null,
  is_enabled: null
)
```

