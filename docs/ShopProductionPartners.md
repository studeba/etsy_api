# EtsyApi::ShopProductionPartners

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of results. | [optional] |
| **results** | [**Array&lt;ShopProductionPartnersResultsInner&gt;**](ShopProductionPartnersResultsInner.md) | The list of requested resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopProductionPartners.new(
  count: null,
  results: null
)
```

