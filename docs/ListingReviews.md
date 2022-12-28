# EtsyApi::ListingReviews

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of TransactionReview resources found. | [optional] |
| **results** | [**Array&lt;ListingReviewsResultsInner&gt;**](ListingReviewsResultsInner.md) | The TransactionReview resources found. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ListingReviews.new(
  count: null,
  results: null
)
```

