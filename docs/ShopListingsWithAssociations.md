# EtsyApi::ShopListingsWithAssociations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of ShopListing resources found. | [optional] |
| **results** | [**Array&lt;ShopListingsWithAssociationsResultsInner&gt;**](ShopListingsWithAssociationsResultsInner.md) | The ShopListing resources found. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopListingsWithAssociations.new(
  count: null,
  results: null
)
```

