# EtsyApi::Payments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of payments in the response. | [optional] |
| **results** | [**Array&lt;PaymentsResultsInner&gt;**](PaymentsResultsInner.md) | A list of payments. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::Payments.new(
  count: null,
  results: null
)
```

