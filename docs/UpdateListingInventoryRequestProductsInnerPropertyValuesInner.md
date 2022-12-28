# EtsyApi::UpdateListingInventoryRequestProductsInnerPropertyValuesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** | The unique ID of an Etsy [listing property](/documentation/reference#operation/getListingProperties). |  |
| **value_ids** | **Array&lt;Integer&gt;** | An array of unique IDs of multiple Etsy [listing property](/documentation/reference#operation/getListingProperties) values. For example, if your listing offers different sizes of a product, then the value ID list contains value IDs for each size. |  |
| **scale_id** | **Integer** | The numeric ID of a single Etsy.com measurement scale. For example, for shoe size, there are three &#x60;scale_id&#x60;s available - &#x60;UK&#x60;, &#x60;US/Canada&#x60;, and &#x60;EU&#x60;, where &#x60;US/Canada&#x60; has &#x60;scale_id&#x60; 19. | [optional] |
| **property_name** | **String** | The name of the property, in the requested locale language. | [optional] |
| **values** | **Array&lt;String&gt;** | A list of property value entries for this product. Note: parenthesis characters (&#x60;(&#x60; and &#x60;)&#x60;) are not allowed. |  |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::UpdateListingInventoryRequestProductsInnerPropertyValuesInner.new(
  property_id: null,
  value_ids: null,
  scale_id: null,
  property_name: null,
  values: null
)
```

