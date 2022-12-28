# EtsyApi::UpdateListingInventoryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products** | [**Array&lt;UpdateListingInventoryRequestProductsInner&gt;**](UpdateListingInventoryRequestProductsInner.md) | A JSON array of products available in a listing, even if only one product. All field names in the JSON blobs are lowercase. |  |
| **price_on_property** | **Array&lt;Integer&gt;** | An array of unique [listing property](/documentation/reference#operation/getListingProperties) ID integers for the properties that change product prices, if any. For example, if you charge specific prices for different sized products in the same listing, then this array contains the property ID for size. | [optional] |
| **quantity_on_property** | **Array&lt;Integer&gt;** | An array of unique [listing property](/documentation/reference#operation/getListingProperties) ID integers for the properties that change the quantity of the products, if any. For example, if you stock specific quantities of different colored products in the same listing, then this array contains the property ID for color. | [optional] |
| **sku_on_property** | **Array&lt;Integer&gt;** | An array of unique [listing property](/documentation/reference#operation/getListingProperties) ID integers for the properties that change the product SKU, if any. For example, if you use specific skus for different colored products in the same listing, then this array contains the property ID for color. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::UpdateListingInventoryRequest.new(
  products: null,
  price_on_property: null,
  quantity_on_property: null,
  sku_on_property: null
)
```

