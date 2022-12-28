# EtsyApi::BuyerTaxonomyNodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of results. | [optional] |
| **results** | [**Array&lt;BuyerTaxonomyNodesResultsInner&gt;**](BuyerTaxonomyNodesResultsInner.md) | The list of requested resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::BuyerTaxonomyNodes.new(
  count: null,
  results: null
)
```

