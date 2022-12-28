# EtsyApi::ListingInventoryProductPropertyValuesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** | The numeric ID of the Property. | [optional] |
| **property_name** | **String** | The name of the Property. | [optional] |
| **scale_id** | **Integer** | The numeric ID of the scale (if any). | [optional] |
| **scale_name** | **String** | The label used to describe the chosen scale (if any). | [optional] |
| **value_ids** | **Array&lt;Integer&gt;** | The numeric IDs of the Property values | [optional] |
| **values** | **Array&lt;String&gt;** | The Property values | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ListingInventoryProductPropertyValuesInner.new(
  property_id: null,
  property_name: null,
  scale_id: null,
  scale_name: null,
  value_ids: null,
  values: null
)
```

