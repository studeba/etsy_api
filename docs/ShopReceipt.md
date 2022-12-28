# EtsyApi::ShopReceipt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **receipt_id** | **Integer** | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction. | [optional] |
| **receipt_type** | **Integer** | The numeric value for the Etsy channel that serviced the purchase: 0 for Etsy.com, 1 for a Pattern shop. | [optional] |
| **seller_user_id** | **Integer** | The numeric ID for the [user](/documentation/reference#tag/User) (seller) fulfilling the purchase. | [optional] |
| **seller_email** | **String** | The email address string for the seller of the listing. | [optional] |
| **buyer_user_id** | **Integer** | The numeric ID for the [user](/documentation/reference#tag/User) making the purchase. | [optional] |
| **buyer_email** | **String** | The email address string for the buyer of the listing. | [optional] |
| **name** | **String** | The name string for the recipient in the shipping address. | [optional] |
| **first_line** | **String** | The first address line string for the recipient in the shipping address. | [optional] |
| **second_line** | **String** | The optional second address line string for the recipient in the shipping address. | [optional] |
| **city** | **String** | The city string for the recipient in the shipping address. | [optional] |
| **state** | **String** | The state string for the recipient in the shipping address. | [optional] |
| **zip** | **String** | The zip code string (not necessarily a number) for the recipient in the shipping address. | [optional] |
| **status** | **String** | The current order status string. One of: &#x60;paid&#x60;, &#x60;completed&#x60;, &#x60;open&#x60;, &#x60;payment processing&#x60; or &#x60;canceled&#x60;. | [optional] |
| **formatted_address** | **String** | The formatted shipping address string for the recipient in the shipping address. | [optional] |
| **country_iso** | **String** | The ISO-3166 alpha-2 country code string for the recipient in the shipping address. | [optional] |
| **payment_method** | **String** | The payment method string identifying purchaser&#39;s payment method, which must be one of: \\&#39;cc\\&#39; (credit card), \\&#39;paypal\\&#39;, \\&#39;check\\&#39;, \\&#39;mo\\&#39; (money order), \\&#39;bt\\&#39; (bank transfer), \\&#39;other\\&#39;, \\&#39;ideal\\&#39;, \\&#39;sofort\\&#39;, \\&#39;apple_pay\\&#39;, \\&#39;google\\&#39;, \\&#39;android_pay\\&#39;, \\&#39;google_pay\\&#39;, \\&#39;klarna\\&#39;, \\&#39;k_pay_in_4\\&#39; (klarna), \\&#39;k_pay_in_3\\&#39; (klarna), or \\&#39;k_financing\\&#39; (klarna). | [optional] |
| **payment_email** | **String** | The email address string for the email address to which to send payment confirmation | [optional] |
| **message_from_seller** | **String** | An optional message string from the seller. | [optional] |
| **message_from_buyer** | **String** | An optional message string from the buyer. | [optional] |
| **message_from_payment** | **String** | The machine-generated acknowledgement string from the payment system. | [optional] |
| **is_paid** | **Boolean** | When true, buyer paid for this purchase. | [optional] |
| **is_shipped** | **Boolean** | When true, seller shipped the products. | [optional] |
| **create_timestamp** | **Integer** | The receipt\\&#39;s creation time, in epoch seconds. | [optional] |
| **created_timestamp** | **Integer** | The receipt\\&#39;s creation time, in epoch seconds. | [optional] |
| **update_timestamp** | **Integer** | The time of the last update to the receipt, in epoch seconds. | [optional] |
| **updated_timestamp** | **Integer** | The time of the last update to the receipt, in epoch seconds. | [optional] |
| **is_gift** | **Boolean** | When true, the buyer indicated this purchase is a gift. | [optional] |
| **gift_message** | **String** | A gift message string the buyer requests delivered with the product. | [optional] |
| **grandtotal** | [**ShopReceiptGrandtotal**](ShopReceiptGrandtotal.md) |  | [optional] |
| **subtotal** | [**ShopReceiptSubtotal**](ShopReceiptSubtotal.md) |  | [optional] |
| **total_price** | [**ShopReceiptTotalPrice**](ShopReceiptTotalPrice.md) |  | [optional] |
| **total_shipping_cost** | [**ShopReceiptTotalShippingCost**](ShopReceiptTotalShippingCost.md) |  | [optional] |
| **total_tax_cost** | [**ShopReceiptTotalTaxCost**](ShopReceiptTotalTaxCost.md) |  | [optional] |
| **total_vat_cost** | [**ShopReceiptTotalVatCost**](ShopReceiptTotalVatCost.md) |  | [optional] |
| **discount_amt** | [**ShopReceiptDiscountAmt**](ShopReceiptDiscountAmt.md) |  | [optional] |
| **gift_wrap_price** | [**ShopReceiptGiftWrapPrice**](ShopReceiptGiftWrapPrice.md) |  | [optional] |
| **shipments** | [**Array&lt;ShopReceiptShipmentsInner&gt;**](ShopReceiptShipmentsInner.md) | A list of shipment statements for this receipt. | [optional] |
| **transactions** | [**Array&lt;ShopReceiptTransactionsInner&gt;**](ShopReceiptTransactionsInner.md) | Array of transactions for the receipt. | [optional] |
| **refunds** | [**Array&lt;ShopReceiptRefundsInner&gt;**](ShopReceiptRefundsInner.md) | Refunds for a given receipt. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopReceipt.new(
  receipt_id: null,
  receipt_type: null,
  seller_user_id: null,
  seller_email: null,
  buyer_user_id: null,
  buyer_email: null,
  name: null,
  first_line: null,
  second_line: null,
  city: null,
  state: null,
  zip: null,
  status: null,
  formatted_address: null,
  country_iso: null,
  payment_method: null,
  payment_email: null,
  message_from_seller: null,
  message_from_buyer: null,
  message_from_payment: null,
  is_paid: null,
  is_shipped: null,
  create_timestamp: null,
  created_timestamp: null,
  update_timestamp: null,
  updated_timestamp: null,
  is_gift: null,
  gift_message: null,
  grandtotal: null,
  subtotal: null,
  total_price: null,
  total_shipping_cost: null,
  total_tax_cost: null,
  total_vat_cost: null,
  discount_amt: null,
  gift_wrap_price: null,
  shipments: null,
  transactions: null,
  refunds: null
)
```

