# EtsyApi::ShopListingWithAssociationsVideosInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **Integer** | The unique ID of a video associated with a listing. | [optional] |
| **height** | **Integer** | The video height dimension in pixels. | [optional] |
| **width** | **Integer** | The video width dimension in pixels. | [optional] |
| **thumbnail_url** | **String** | The url of the video thumbnail. | [optional] |
| **video_url** | **String** | The url of the video file. | [optional] |
| **video_state** | **String** | The current state of a given video. Value is one of &#x60;active&#x60;, &#x60;inactive&#x60;, &#x60;deleted&#x60; or &#x60;flagged&#x60;. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopListingWithAssociationsVideosInner.new(
  video_id: null,
  height: null,
  width: null,
  thumbnail_url: null,
  video_url: null,
  video_state: null
)
```

