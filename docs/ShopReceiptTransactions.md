# EtsyApi::ShopReceiptTransactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of ShopReceiptTransaction resources found. | [optional] |
| **results** | [**Array&lt;ShopReceiptTransactionsResultsInner&gt;**](ShopReceiptTransactionsResultsInner.md) | The ShopReceiptTransaction resources found. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopReceiptTransactions.new(
  count: null,
  results: null
)
```

