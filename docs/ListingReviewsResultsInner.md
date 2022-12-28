# EtsyApi::ListingReviewsResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The shop&#39;s numeric ID. | [optional] |
| **listing_id** | **Integer** | The ID of the ShopListing that the TransactionReview belongs to. | [optional] |
| **rating** | **Integer** | Rating value on scale from 1 to 5 | [optional] |
| **review** | **String** | A message left by the author, explaining the feedback, if provided. | [optional] |
| **language** | **String** | The language of the TransactionReview | [optional] |
| **image_url_fullxfull** | **String** | The url to a photo provided with the feedback, dimensions fullxfull. Note: This field may be absent, depending on the buyer&#39;s privacy settings. | [optional] |
| **create_timestamp** | **Integer** | The date and time the TransactionReview was created in epoch seconds. | [optional] |
| **created_timestamp** | **Integer** | The date and time the TransactionReview was created in epoch seconds. | [optional] |
| **update_timestamp** | **Integer** | The date and time the TransactionReview was updated in epoch seconds. | [optional] |
| **updated_timestamp** | **Integer** | The date and time the TransactionReview was updated in epoch seconds. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ListingReviewsResultsInner.new(
  shop_id: null,
  listing_id: null,
  rating: null,
  review: null,
  language: null,
  image_url_fullxfull: null,
  create_timestamp: null,
  created_timestamp: null,
  update_timestamp: null,
  updated_timestamp: null
)
```

