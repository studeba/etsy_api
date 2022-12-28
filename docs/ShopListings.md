# EtsyApi::ShopListings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of ShopListing resources found. | [optional] |
| **results** | [**Array&lt;ShopListingsResultsInner&gt;**](ShopListingsResultsInner.md) | The ShopListing resources found. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopListings.new(
  count: null,
  results: null
)
```

