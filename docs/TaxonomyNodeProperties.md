# EtsyApi::TaxonomyNodeProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of results. | [optional] |
| **results** | [**Array&lt;TaxonomyNodePropertiesResultsInner&gt;**](TaxonomyNodePropertiesResultsInner.md) | The list of requested resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::TaxonomyNodeProperties.new(
  count: null,
  results: null
)
```

