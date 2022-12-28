# EtsyApi::ShopListingFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_file_id** | **Integer** | The unique numeric ID of a file associated with a digital listing. | [optional] |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. | [optional] |
| **rank** | **Integer** | The numeric index of the display order position of this file in the listing, starting at 1. | [optional] |
| **filename** | **String** | The file name string for a file associated with a digital listing. | [optional] |
| **filesize** | **String** | A human-readable format size string for the size of a file. | [optional] |
| **size_bytes** | **Integer** | A number indicating the size of a file, measured in bytes. | [optional] |
| **filetype** | **String** | A type string indicating a file&#39;s MIME type. | [optional] |
| **create_timestamp** | **Integer** | The unique numeric ID of a file associated with a digital listing. | [optional] |
| **created_timestamp** | **Integer** | The unique numeric ID of a file associated with a digital listing. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopListingFile.new(
  listing_file_id: null,
  listing_id: null,
  rank: null,
  filename: null,
  filesize: null,
  size_bytes: null,
  filetype: null,
  create_timestamp: null,
  created_timestamp: null
)
```

