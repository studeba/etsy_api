# EtsyApi::TransactionReviewsResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The shop&#39;s numeric ID. | [optional] |
| **listing_id** | **Integer** | The ID of the ShopListing that the TransactionReview belongs to. | [optional] |
| **transaction_id** | **Integer** | The ID of the ShopReceipt Transaction that the TransactionReview belongs to. | [optional] |
| **buyer_user_id** | **Integer** | The numeric ID of the user who was the buyer in this transaction. Note: This field may be absent, depending on the buyer&#39;s privacy settings. | [optional] |
| **rating** | **Integer** | Rating value on scale from 1 to 5 | [optional] |
| **review** | **String** | A message left by the author, explaining the feedback, if provided. | [optional][default to &#39;&#39;] |
| **language** | **String** | The language of the TransactionReview | [optional] |
| **image_url_fullxfull** | **String** | The url to a photo provided with the feedback, dimensions fullxfull. Note: This field may be absent, depending on the buyer&#39;s privacy settings. | [optional] |
| **create_timestamp** | **Integer** | The date and time the TransactionReview was created in epoch seconds. | [optional] |
| **created_timestamp** | **Integer** | The date and time the TransactionReview was created in epoch seconds. | [optional] |
| **update_timestamp** | **Integer** | The date and time the TransactionReview was updated in epoch seconds. | [optional] |
| **updated_timestamp** | **Integer** | The date and time the TransactionReview was updated in epoch seconds. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::TransactionReviewsResultsInner.new(
  shop_id: null,
  listing_id: null,
  transaction_id: null,
  buyer_user_id: null,
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

