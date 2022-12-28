# EtsyApi::TransactionVariations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** | The variation property ID. | [optional] |
| **value_id** | **Integer** | The ID of the variation value selected. | [optional] |
| **formatted_name** | **String** | Formatted name of the variation. | [optional] |
| **formatted_value** | **String** | Value of the variation entered by the buyer. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::TransactionVariations.new(
  property_id: null,
  value_id: null,
  formatted_name: null,
  formatted_value: null
)
```

