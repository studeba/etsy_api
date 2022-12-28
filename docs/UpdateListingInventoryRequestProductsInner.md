# EtsyApi::UpdateListingInventoryRequestProductsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** | The SKU string for the product | [optional] |
| **property_values** | [**Array&lt;UpdateListingInventoryRequestProductsInnerPropertyValuesInner&gt;**](UpdateListingInventoryRequestProductsInnerPropertyValuesInner.md) | A list of property value entries for this product. Note: parenthesis characters (&#x60;(&#x60; and &#x60;)&#x60;) are not allowed. | [optional] |
| **offerings** | [**Array&lt;UpdateListingInventoryRequestProductsInnerOfferingsInner&gt;**](UpdateListingInventoryRequestProductsInnerOfferingsInner.md) | A list of product offering entries for this product. |  |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::UpdateListingInventoryRequestProductsInner.new(
  sku: null,
  property_values: null,
  offerings: null
)
```

