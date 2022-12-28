# EtsyApi::SellerTaxonomyNodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of results. | [optional] |
| **results** | [**Array&lt;SellerTaxonomyNodesResultsInner&gt;**](SellerTaxonomyNodesResultsInner.md) | The list of requested resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::SellerTaxonomyNodes.new(
  count: null,
  results: null
)
```

