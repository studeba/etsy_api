# EtsyApi::BuyerTaxonomyNodePropertyPossibleValuesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value_id** | **Integer** | The numeric ID of this property value. | [optional] |
| **name** | **String** | The name string of this property value. | [optional] |
| **scale_id** | **Integer** | The numeric scale ID of the scale to which this property value belongs. | [optional] |
| **equal_to** | **Array&lt;Integer&gt;** | A list of numeric property value IDs this property value is equal to (if any). | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::BuyerTaxonomyNodePropertyPossibleValuesInner.new(
  value_id: null,
  name: null,
  scale_id: null,
  equal_to: null
)
```

