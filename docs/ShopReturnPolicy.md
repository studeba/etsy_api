# EtsyApi::ShopReturnPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_policy_id** | **Integer** | The numeric ID of the Return Policy. | [optional] |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. | [optional] |
| **accepts_returns** | **Boolean** | return_policy_accepts_returns | [optional] |
| **accepts_exchanges** | **Boolean** | return_policy_accepts_exchanges | [optional] |
| **return_deadline** | **Integer** | The deadline for the Return Policy, measured in days. The value must be one of the following: [7, 14, 21, 30, 45, 60, 90]. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopReturnPolicy.new(
  return_policy_id: null,
  shop_id: null,
  accepts_returns: null,
  accepts_exchanges: null,
  return_deadline: null
)
```

