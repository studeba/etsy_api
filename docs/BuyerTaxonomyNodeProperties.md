# EtsyApi::BuyerTaxonomyNodeProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of results. | [optional] |
| **results** | [**Array&lt;BuyerTaxonomyNodePropertiesResultsInner&gt;**](BuyerTaxonomyNodePropertiesResultsInner.md) | The list of requested resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::BuyerTaxonomyNodeProperties.new(
  count: null,
  results: null
)
```

