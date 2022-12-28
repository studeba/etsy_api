# EtsyApi::TransactionReviews

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of TransactionReview resources found. | [optional] |
| **results** | [**Array&lt;TransactionReviewsResultsInner&gt;**](TransactionReviewsResultsInner.md) | The TransactionReview resources found. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::TransactionReviews.new(
  count: null,
  results: null
)
```

