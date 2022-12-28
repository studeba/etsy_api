# EtsyApi::ListingTranslation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the Listing. | [optional] |
| **language** | **String** | The IETF language tag (e.g. &#39;fr&#39;) for the language of this translation. | [optional] |
| **title** | **String** | The title of the Listing of this Translation. | [optional] |
| **description** | **String** | The description of the Listing of this Translation. | [optional] |
| **tags** | **Array&lt;String&gt;** | The tags of the Listing of this Translation. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ListingTranslation.new(
  listing_id: null,
  language: null,
  title: null,
  description: null,
  tags: null
)
```

