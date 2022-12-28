# EtsyApi::ShopReceiptTransactionsResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **Integer** | The unique numeric ID for a transaction. | [optional] |
| **title** | **String** | The title string of the [listing](/documentation/reference#tag/ShopListing) purchased in this transaction. | [optional] |
| **description** | **String** | The description string of the [listing](/documentation/reference#tag/ShopListing) purchased in this transaction. | [optional] |
| **seller_user_id** | **Integer** | The numeric user ID for the seller in this transaction. | [optional] |
| **buyer_user_id** | **Integer** | The numeric user ID for the buyer in this transaction. | [optional] |
| **create_timestamp** | **Integer** | The transaction\\&#39;s creation date and time, in epoch seconds. | [optional] |
| **created_timestamp** | **Integer** | The transaction\\&#39;s creation date and time, in epoch seconds. | [optional] |
| **paid_timestamp** | **Integer** | The transaction\\&#39;s paid date and time, in epoch seconds. | [optional] |
| **shipped_timestamp** | **Integer** | The transaction\\&#39;s shipping date and time, in epoch seconds. | [optional] |
| **quantity** | **Integer** | The numeric quantity of products purchased in this transaction. | [optional] |
| **listing_image_id** | **Integer** | The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction. | [optional] |
| **receipt_id** | **Integer** | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction. | [optional] |
| **is_digital** | **Boolean** | When true, the transaction recorded the purchase of a digital listing. | [optional] |
| **file_data** | **String** | A string describing the files purchased in this transaction. | [optional] |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. | [optional] |
| **transaction_type** | **String** | The type string for the transaction, usually \&quot;listing\&quot;. | [optional] |
| **product_id** | **Integer** | The numeric ID for a specific [product](/documentation/reference#tag/ShopListing-Product) purchased from a listing. | [optional] |
| **sku** | **String** | The SKU string for the product | [optional] |
| **price** | [**ShopReceiptTransactionPrice**](ShopReceiptTransactionPrice.md) |  | [optional] |
| **shipping_cost** | [**ShopReceiptTransactionShippingCost**](ShopReceiptTransactionShippingCost.md) |  | [optional] |
| **variations** | [**Array&lt;ShopReceiptTransactionVariationsInner&gt;**](ShopReceiptTransactionVariationsInner.md) | Array of variations and personalizations the buyer chose. | [optional] |
| **product_data** | [**Array&lt;ListingInventoryProductPropertyValuesInner&gt;**](ListingInventoryProductPropertyValuesInner.md) | A list of property value entries for this product. Note: parenthesis characters (&#x60;(&#x60; and &#x60;)&#x60;) are not allowed. | [optional] |
| **shipping_profile_id** | **Integer** | The ID of the shipping profile selected for this listing. | [optional] |
| **min_processing_days** | **Integer** | The minimum number of days for processing the listing. | [optional] |
| **max_processing_days** | **Integer** | The maximum number of days for processing the listing. | [optional] |
| **shipping_method** | **String** | Name of the selected shipping method. | [optional] |
| **shipping_upgrade** | **String** | The name of the shipping upgrade selected for this listing. Default value is null. | [optional] |
| **expected_ship_date** | **Integer** | The date &amp; time of the expected ship date, in epoch seconds. | [optional] |
| **buyer_coupon** | **Float** | The amount of the buyer coupon that was discounted in the shop&#39;s currency. | [optional][default to 0] |
| **shop_coupon** | **Float** | The amount of the shop coupon that was discounted in the shop&#39;s currency. | [optional][default to 0] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopReceiptTransactionsResultsInner.new(
  transaction_id: null,
  title: null,
  description: null,
  seller_user_id: null,
  buyer_user_id: null,
  create_timestamp: null,
  created_timestamp: null,
  paid_timestamp: null,
  shipped_timestamp: null,
  quantity: null,
  listing_image_id: null,
  receipt_id: null,
  is_digital: null,
  file_data: null,
  listing_id: null,
  transaction_type: null,
  product_id: null,
  sku: null,
  price: null,
  shipping_cost: null,
  variations: null,
  product_data: null,
  shipping_profile_id: null,
  min_processing_days: null,
  max_processing_days: null,
  shipping_method: null,
  shipping_upgrade: null,
  expected_ship_date: null,
  buyer_coupon: null,
  shop_coupon: null
)
```

