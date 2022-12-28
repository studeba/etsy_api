# EtsyApi::ShopListingFiles

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of ShopListingFiles being returned.. | [optional] |
| **results** | [**Array&lt;ShopListingFilesResultsInner&gt;**](ShopListingFilesResultsInner.md) | An array of ShopListingFile resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopListingFiles.new(
  count: null,
  results: null
)
```

