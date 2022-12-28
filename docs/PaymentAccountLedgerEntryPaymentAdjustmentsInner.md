# EtsyApi::PaymentAccountLedgerEntryPaymentAdjustmentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_adjustment_id** | **Integer** | The numeric ID for a payment adjustment. | [optional] |
| **payment_id** | **Integer** | A unique numeric ID for a payment to a specific Etsy [shop](/documentation/reference#tag/Shop). | [optional] |
| **status** | **String** | The status string of the payment adjustment. | [optional] |
| **is_success** | **Boolean** | When true, the payment adjustment was or is likely to complete successfully. | [optional] |
| **user_id** | **Integer** | The numeric ID for the [user](/documentation/reference#tag/User) (seller) fulfilling the purchase. | [optional] |
| **reason_code** | **String** | A human-readable string describing the reason for the refund. | [optional] |
| **total_adjustment_amount** | **Integer** | The total numeric amount of the refund in the payment currency. | [optional] |
| **shop_total_adjustment_amount** | **Integer** | The numeric amount of the refund in the shop currency. | [optional] |
| **buyer_total_adjustment_amount** | **Integer** | The numeric amount of the refund in the buyer currency. | [optional] |
| **total_fee_adjustment_amount** | **Integer** | The numeric amount of card processing fees associated with a payment adjustment. | [optional] |
| **create_timestamp** | **Integer** | The transaction\\&#39;s creation date and time, in epoch seconds. | [optional] |
| **created_timestamp** | **Integer** | The transaction\\&#39;s creation date and time, in epoch seconds. | [optional] |
| **update_timestamp** | **Integer** | The date and time of the last change to the payment adjustment in epoch seconds. | [optional] |
| **updated_timestamp** | **Integer** | The date and time of the last change to the payment adjustment in epoch seconds. | [optional] |
| **payment_adjustment_items** | [**Array&lt;PaymentAdjustmentPaymentAdjustmentItemsInner&gt;**](PaymentAdjustmentPaymentAdjustmentItemsInner.md) | List of payment adjustment line items. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::PaymentAccountLedgerEntryPaymentAdjustmentsInner.new(
  payment_adjustment_id: null,
  payment_id: null,
  status: null,
  is_success: null,
  user_id: null,
  reason_code: null,
  total_adjustment_amount: null,
  shop_total_adjustment_amount: null,
  buyer_total_adjustment_amount: null,
  total_fee_adjustment_amount: null,
  create_timestamp: null,
  created_timestamp: null,
  update_timestamp: null,
  updated_timestamp: null,
  payment_adjustment_items: null
)
```

