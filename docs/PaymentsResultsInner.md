# EtsyApi::PaymentsResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **Integer** | A unique numeric ID for a payment to a specific Etsy [shop](/documentation/reference#tag/Shop). | [optional] |
| **buyer_user_id** | **Integer** | The numeric ID for the [user](/documentation/reference#tag/User) who paid the purchase. | [optional] |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. | [optional] |
| **receipt_id** | **Integer** | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction. | [optional] |
| **amount_gross** | [**PaymentAmountGross**](PaymentAmountGross.md) |  | [optional] |
| **amount_fees** | [**PaymentAmountFees**](PaymentAmountFees.md) |  | [optional] |
| **amount_net** | [**PaymentAmountNet**](PaymentAmountNet.md) |  | [optional] |
| **posted_gross** | [**PaymentPostedGross**](PaymentPostedGross.md) |  | [optional] |
| **posted_fees** | [**PaymentPostedFees**](PaymentPostedFees.md) |  | [optional] |
| **posted_net** | [**PaymentPostedNet**](PaymentPostedNet.md) |  | [optional] |
| **adjusted_gross** | [**PaymentAdjustedGross**](PaymentAdjustedGross.md) |  | [optional] |
| **adjusted_fees** | [**PaymentAdjustedFees**](PaymentAdjustedFees.md) |  | [optional] |
| **adjusted_net** | [**PaymentAdjustedNet**](PaymentAdjustedNet.md) |  | [optional] |
| **currency** | **String** | The ISO (alphabetic) code string for the payment&#39;s currency. | [optional] |
| **shop_currency** | **String** | The ISO (alphabetic) code for the shop&#39;s currency. The shop displays all prices in this currency by default. | [optional] |
| **buyer_currency** | **String** | The currency string of the buyer. | [optional] |
| **shipping_user_id** | **Integer** | The numeric ID of the user to which the seller ships the order. | [optional] |
| **shipping_address_id** | **Integer** | The numeric id identifying the shipping address. | [optional] |
| **billing_address_id** | **Integer** | The numeric ID identifying the billing address of the buyer. | [optional] |
| **status** | **String** | A string indicating the current status of the payment, most commonly \&quot;settled\&quot; or \&quot;authed\&quot;. | [optional] |
| **shipped_timestamp** | **Integer** | The transaction\\&#39;s shipping date and time, in epoch seconds. | [optional] |
| **create_timestamp** | **Integer** | The transaction\\&#39;s creation date and time, in epoch seconds. | [optional] |
| **created_timestamp** | **Integer** | The transaction\\&#39;s creation date and time, in epoch seconds. | [optional] |
| **update_timestamp** | **Integer** | The date and time of the last change to the payment adjustment in epoch seconds. | [optional] |
| **updated_timestamp** | **Integer** | The date and time of the last change to the payment adjustment in epoch seconds. | [optional] |
| **payment_adjustments** | [**Array&lt;PaymentAccountLedgerEntryPaymentAdjustmentsInner&gt;**](PaymentAccountLedgerEntryPaymentAdjustmentsInner.md) | List of refund objects on an Etsy Payments transaction. All monetary amounts are in USD pennies unless otherwise specified. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::PaymentsResultsInner.new(
  payment_id: null,
  buyer_user_id: null,
  shop_id: null,
  receipt_id: null,
  amount_gross: null,
  amount_fees: null,
  amount_net: null,
  posted_gross: null,
  posted_fees: null,
  posted_net: null,
  adjusted_gross: null,
  adjusted_fees: null,
  adjusted_net: null,
  currency: null,
  shop_currency: null,
  buyer_currency: null,
  shipping_user_id: null,
  shipping_address_id: null,
  billing_address_id: null,
  status: null,
  shipped_timestamp: null,
  create_timestamp: null,
  created_timestamp: null,
  update_timestamp: null,
  updated_timestamp: null,
  payment_adjustments: null
)
```

