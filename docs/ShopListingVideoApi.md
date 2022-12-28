# EtsyApi::ShopListingVideoApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_listing_video**](ShopListingVideoApi.md#delete_listing_video) | **DELETE** /v3/application/shops/{shop_id}/listings/{listing_id}/videos/{video_id} |  |
| [**get_listing_video**](ShopListingVideoApi.md#get_listing_video) | **GET** /v3/application/listings/{listing_id}/videos/{video_id} |  |
| [**get_listing_videos**](ShopListingVideoApi.md#get_listing_videos) | **GET** /v3/application/listings/{listing_id}/videos |  |
| [**upload_listing_video**](ShopListingVideoApi.md#upload_listing_video) | **POST** /v3/application/shops/{shop_id}/listings/{listing_id}/videos |  |


## delete_listing_video

> delete_listing_video(shop_id, listing_id, video_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Open API V3 endpoint to delete a listing video. A copy of the video remains on our servers, and so a deleted video may be re-associated with the listing without re-uploading the original video; see uploadListingVideo.

### Examples

```ruby
require 'time'
require 'etsy_api'
# setup authorization
EtsyApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EtsyApi::ShopListingVideoApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
video_id = 56 # Integer | The unique ID of a video associated with a listing.

begin
  
  api_instance.delete_listing_video(shop_id, listing_id, video_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVideoApi->delete_listing_video: #{e}"
end
```

#### Using the delete_listing_video_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_listing_video_with_http_info(shop_id, listing_id, video_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_listing_video_with_http_info(shop_id, listing_id, video_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVideoApi->delete_listing_video_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **video_id** | **Integer** | The unique ID of a video associated with a listing. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_video

> <ListingVideo> get_listing_video(video_id, listing_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a single video associated with the given listing. Requesting a video from a listing returns an empty result.

### Examples

```ruby
require 'time'
require 'etsy_api'
# setup authorization
EtsyApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = EtsyApi::ShopListingVideoApi.new
video_id = 56 # Integer | The unique ID of a video associated with a listing.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.

begin
  
  result = api_instance.get_listing_video(video_id, listing_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVideoApi->get_listing_video: #{e}"
end
```

#### Using the get_listing_video_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingVideo>, Integer, Hash)> get_listing_video_with_http_info(video_id, listing_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_video_with_http_info(video_id, listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingVideo>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVideoApi->get_listing_video_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **Integer** | The unique ID of a video associated with a listing. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |

### Return type

[**ListingVideo**](ListingVideo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_videos

> <ListingVideos> get_listing_videos(listing_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves all listing video resources for a listing with a specific listing ID.

### Examples

```ruby
require 'time'
require 'etsy_api'
# setup authorization
EtsyApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = EtsyApi::ShopListingVideoApi.new
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.

begin
  
  result = api_instance.get_listing_videos(listing_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVideoApi->get_listing_videos: #{e}"
end
```

#### Using the get_listing_videos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingVideos>, Integer, Hash)> get_listing_videos_with_http_info(listing_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_videos_with_http_info(listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingVideos>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVideoApi->get_listing_videos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |

### Return type

[**ListingVideos**](ListingVideos.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upload_listing_video

> <ListingVideo> upload_listing_video(shop_id, listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Uploads a new video for a listing, or associates an existing video with a specific listing. You must either provide the `video_id` of an existing video, or the name and binary file data for a video to upload.

### Examples

```ruby
require 'time'
require 'etsy_api'
# setup authorization
EtsyApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EtsyApi::ShopListingVideoApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  video_id: 56, # Integer | The unique ID of a video associated with a listing.
  video: File.new('/path/to/some/file'), # File | A video file to upload.
  name: 'name_example' # String | The file name string for the video to upload.
}

begin
  
  result = api_instance.upload_listing_video(shop_id, listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVideoApi->upload_listing_video: #{e}"
end
```

#### Using the upload_listing_video_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingVideo>, Integer, Hash)> upload_listing_video_with_http_info(shop_id, listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.upload_listing_video_with_http_info(shop_id, listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingVideo>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVideoApi->upload_listing_video_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **video_id** | **Integer** | The unique ID of a video associated with a listing. | [optional] |
| **video** | **File** | A video file to upload. | [optional] |
| **name** | **String** | The file name string for the video to upload. | [optional] |

### Return type

[**ListingVideo**](ListingVideo.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

