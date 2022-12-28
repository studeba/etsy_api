# EtsyApi::ShopRefund

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | [**ShopRefundAmount**](ShopRefundAmount.md) |  | [optional] |
| **created_timestamp** | **Integer** | The date &amp; time of the refund, in epoch seconds. | [optional] |
| **reason** | **String** | The reason string given for the refund. | [optional] |
| **note_from_issuer** | **String** | The note string created by the refund issuer. | [optional] |
| **status** | **String** | The status indication string for the refund. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopRefund.new(
  amount: null,
  created_timestamp: null,
  reason: null,
  note_from_issuer: null,
  status: null
)
```

