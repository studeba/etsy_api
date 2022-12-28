# EtsyApi::PaymentAccountLedgerEntries

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of PaymentAccountLedgerEntry resources found. | [optional] |
| **results** | [**Array&lt;PaymentAccountLedgerEntriesResultsInner&gt;**](PaymentAccountLedgerEntriesResultsInner.md) | The PaymentAccountLedgerEntry resources found. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::PaymentAccountLedgerEntries.new(
  count: null,
  results: null
)
```

