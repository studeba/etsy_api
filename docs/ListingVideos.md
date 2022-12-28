# EtsyApi::ListingVideos

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of results. | [optional] |
| **results** | [**Array&lt;ListingVideosResultsInner&gt;**](ListingVideosResultsInner.md) | The list of requested resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ListingVideos.new(
  count: null,
  results: null
)
```

