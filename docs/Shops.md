# EtsyApi::Shops

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The total number of Shops | [optional] |
| **results** | [**Array&lt;ShopsResultsInner&gt;**](ShopsResultsInner.md) | The Shop resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::Shops.new(
  count: null,
  results: null
)
```

