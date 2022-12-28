# EtsyApi::ShopReceipts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of Shop Receipts found. | [optional] |
| **results** | [**Array&lt;ShopReceiptsResultsInner&gt;**](ShopReceiptsResultsInner.md) | List of Shop Receipt resources found, with all Shop Receipt fields for each resource. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopReceipts.new(
  count: null,
  results: null
)
```

