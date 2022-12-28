# EtsyApi::ShopReceiptTotalTaxCost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of represented by this data. | [optional] |
| **divisor** | **Integer** | The divisor to render the amount. | [optional] |
| **currency_code** | **String** | The ISO currency code for this data. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopReceiptTotalTaxCost.new(
  amount: null,
  divisor: null,
  currency_code: null
)
```

