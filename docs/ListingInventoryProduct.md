# EtsyApi::ListingInventoryProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | The numeric ID for a specific [product](/documentation/reference#tag/ShopListing-Product) purchased from a listing. | [optional] |
| **sku** | **String** | The SKU string for the product | [optional] |
| **is_deleted** | **Boolean** | When true, someone deleted this product. | [optional] |
| **offerings** | [**Array&lt;ListingInventoryProductOfferingsInner&gt;**](ListingInventoryProductOfferingsInner.md) | A list of product offering entries for this product. | [optional] |
| **property_values** | [**Array&lt;ListingInventoryProductPropertyValuesInner&gt;**](ListingInventoryProductPropertyValuesInner.md) | A list of property value entries for this product. Note: parenthesis characters (&#x60;(&#x60; and &#x60;)&#x60;) are not allowed. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ListingInventoryProduct.new(
  product_id: null,
  sku: null,
  is_deleted: null,
  offerings: null,
  property_values: null
)
```

