# EtsyApi::ListingImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. | [optional] |
| **listing_image_id** | **Integer** | The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction. | [optional] |
| **hex_code** | **String** | The webhex string for the image&#39;s average color, in webhex notation. | [optional] |
| **red** | **Integer** | The numeric red value equal to the image&#39;s average red value, from 0-255 (RGB color). | [optional] |
| **green** | **Integer** | The numeric red value equal to the image&#39;s average red value, from 0-255 (RGB color). | [optional] |
| **blue** | **Integer** | The numeric red value equal to the image&#39;s average red value, from 0-255 (RGB color). | [optional] |
| **hue** | **Integer** | The numeric hue equal to the image&#39;s average hue, from 0-360 (HSV color). | [optional] |
| **saturation** | **Integer** | The numeric saturation equal to the image&#39;s average saturation, from 0-100 (HSV color). | [optional] |
| **brightness** | **Integer** | The numeric brightness equal to the image&#39;s average brightness, from 0-100 (HSV color). | [optional] |
| **is_black_and_white** | **Boolean** | When true, the image is in black &amp; white. | [optional] |
| **creation_tsz** | **Integer** | The listing image\\&#39;s creation time, in epoch seconds. | [optional] |
| **created_timestamp** | **Integer** | The listing image\\&#39;s creation time, in epoch seconds. | [optional] |
| **rank** | **Integer** | The positive non-zero numeric position in the images displayed in a listing, with rank 1 images appearing in the left-most position in a listing. | [optional] |
| **url_75x75** | **String** | The url string for a 75x75 pixel thumbnail of the image. | [optional] |
| **url_170x135** | **String** | The url string for a 170x135 pixel thumbnail of the image. | [optional] |
| **url_570x_n** | **String** | The url string for a thumbnail of the image, no more than 570 pixels wide with variable height. | [optional] |
| **url_fullxfull** | **String** | The url string for the full-size image, up to 3000 pixels in each dimension. | [optional] |
| **full_height** | **Integer** | The numeric height, measured in pixels, of the full-sized image referenced in url_fullxfull. | [optional] |
| **full_width** | **Integer** | The numeric width, measured in pixels, of the full-sized image referenced in url_fullxfull. | [optional] |
| **alt_text** | **String** | Alt text for the listing image. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ListingImage.new(
  listing_id: null,
  listing_image_id: null,
  hex_code: null,
  red: null,
  green: null,
  blue: null,
  hue: null,
  saturation: null,
  brightness: null,
  is_black_and_white: null,
  creation_tsz: null,
  created_timestamp: null,
  rank: null,
  url_75x75: null,
  url_170x135: null,
  url_570x_n: null,
  url_fullxfull: null,
  full_height: null,
  full_width: null,
  alt_text: null
)
```

