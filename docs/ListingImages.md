# EtsyApi::ListingImages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of results. | [optional] |
| **results** | [**Array&lt;ListingImagesResultsInner&gt;**](ListingImagesResultsInner.md) | The list of requested resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ListingImages.new(
  count: null,
  results: null
)
```

