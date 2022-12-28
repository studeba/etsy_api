# EtsyApi::ShopSections

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of results. | [optional] |
| **results** | [**Array&lt;ShopSectionsResultsInner&gt;**](ShopSectionsResultsInner.md) | The list of requested resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopSections.new(
  count: null,
  results: null
)
```

