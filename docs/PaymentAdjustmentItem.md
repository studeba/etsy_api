# EtsyApi::PaymentAdjustmentItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_adjustment_id** | **Integer** | The numeric ID for a payment adjustment. | [optional] |
| **payment_adjustment_item_id** | **Integer** | Unique ID for the adjustment line item. | [optional] |
| **adjustment_type** | **String** | String indicating the type of adjustment for this line item. | [optional] |
| **amount** | **Integer** | Integer value for the amount of the adjustment in original currency. | [optional][default to 0] |
| **shop_amount** | **Integer** | Integer value for the amount of the adjustment in currency for the shop. | [optional][default to 0] |
| **transaction_id** | **Integer** | The unique numeric ID for a transaction. | [optional] |
| **bill_payment_id** | **Integer** | Unique ID for the bill payment adjustment. | [optional] |
| **created_timestamp** | **Integer** | The transaction\\&#39;s creation date and time, in epoch seconds. | [optional] |
| **updated_timestamp** | **Integer** | The update date and time the payment adjustment in epoch seconds. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::PaymentAdjustmentItem.new(
  payment_adjustment_id: null,
  payment_adjustment_item_id: null,
  adjustment_type: null,
  amount: null,
  shop_amount: null,
  transaction_id: null,
  bill_payment_id: null,
  created_timestamp: null,
  updated_timestamp: null
)
```

