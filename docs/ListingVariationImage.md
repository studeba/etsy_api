# EtsyApi::ListingVariationImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** | The numeric ID of the Property. | [optional] |
| **value_id** | **Integer** | The numeric ID of the Value. | [optional] |
| **value** | **String** | The string value of the property. | [optional] |
| **image_id** | **Integer** | The numeric ID of the Image. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ListingVariationImage.new(
  property_id: null,
  value_id: null,
  value: null,
  image_id: null
)
```

