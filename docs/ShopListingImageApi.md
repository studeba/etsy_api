# EtsyApi::ShopListingImageApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_listing_image**](ShopListingImageApi.md#delete_listing_image) | **DELETE** /v3/application/shops/{shop_id}/listings/{listing_id}/images/{listing_image_id} |  |
| [**get_listing_image**](ShopListingImageApi.md#get_listing_image) | **GET** /v3/application/listings/{listing_id}/images/{listing_image_id} |  |
| [**get_listing_image_deprecated**](ShopListingImageApi.md#get_listing_image_deprecated) | **GET** /v3/application/shops/{shop_id}/listings/{listing_id}/images/{listing_image_id} |  |
| [**get_listing_images**](ShopListingImageApi.md#get_listing_images) | **GET** /v3/application/listings/{listing_id}/images |  |
| [**get_listing_images_deprecated**](ShopListingImageApi.md#get_listing_images_deprecated) | **GET** /v3/application/shops/{shop_id}/listings/{listing_id}/images |  |
| [**upload_listing_image**](ShopListingImageApi.md#upload_listing_image) | **POST** /v3/application/shops/{shop_id}/listings/{listing_id}/images |  |


## delete_listing_image

> delete_listing_image(shop_id, listing_id, listing_image_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Open API V3 endpoint to delete a listing image. A copy of the file remains on our servers, and so a deleted image may be re-associated with the listing without re-uploading the original image; see uploadListingImage.

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

api_instance = EtsyApi::ShopListingImageApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
listing_image_id = 56 # Integer | The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction.

begin
  
  api_instance.delete_listing_image(shop_id, listing_id, listing_image_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->delete_listing_image: #{e}"
end
```

#### Using the delete_listing_image_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_listing_image_with_http_info(shop_id, listing_id, listing_image_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_listing_image_with_http_info(shop_id, listing_id, listing_image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->delete_listing_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **listing_image_id** | **Integer** | The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_image

> <ListingImage> get_listing_image(listing_id, listing_image_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the references and metadata for a listing image with a specific image ID.

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

api_instance = EtsyApi::ShopListingImageApi.new
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
listing_image_id = 56 # Integer | The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction.

begin
  
  result = api_instance.get_listing_image(listing_id, listing_image_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->get_listing_image: #{e}"
end
```

#### Using the get_listing_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingImage>, Integer, Hash)> get_listing_image_with_http_info(listing_id, listing_image_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_image_with_http_info(listing_id, listing_image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingImage>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->get_listing_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **listing_image_id** | **Integer** | The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction. |  |

### Return type

[**ListingImage**](ListingImage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_image_deprecated

> <ListingImage> get_listing_image_deprecated(shop_id, listing_id, listing_image_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  NOTE: This endpoint is being deprecated in favor of not requiring the shops/:shop_id as part of the URL. Retrieves the references and metadata for a listing image with a specific image ID.

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

api_instance = EtsyApi::ShopListingImageApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
listing_image_id = 56 # Integer | The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction.

begin
  
  result = api_instance.get_listing_image_deprecated(shop_id, listing_id, listing_image_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->get_listing_image_deprecated: #{e}"
end
```

#### Using the get_listing_image_deprecated_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingImage>, Integer, Hash)> get_listing_image_deprecated_with_http_info(shop_id, listing_id, listing_image_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_image_deprecated_with_http_info(shop_id, listing_id, listing_image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingImage>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->get_listing_image_deprecated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **listing_image_id** | **Integer** | The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction. |  |

### Return type

[**ListingImage**](ListingImage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_images

> <ListingImages> get_listing_images(listing_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves all listing image resources for a listing with a specific listing ID.

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

api_instance = EtsyApi::ShopListingImageApi.new
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.

begin
  
  result = api_instance.get_listing_images(listing_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->get_listing_images: #{e}"
end
```

#### Using the get_listing_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingImages>, Integer, Hash)> get_listing_images_with_http_info(listing_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_images_with_http_info(listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingImages>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->get_listing_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |

### Return type

[**ListingImages**](ListingImages.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_images_deprecated

> <ListingImages> get_listing_images_deprecated(shop_id, listing_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  NOTE: This endpoint is being deprecated in favor of not requiring the shops/:shop_id as part of the URL. Retrieves all listing image resources for a listing with a specific listing ID.

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

api_instance = EtsyApi::ShopListingImageApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.

begin
  
  result = api_instance.get_listing_images_deprecated(shop_id, listing_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->get_listing_images_deprecated: #{e}"
end
```

#### Using the get_listing_images_deprecated_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingImages>, Integer, Hash)> get_listing_images_deprecated_with_http_info(shop_id, listing_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_images_deprecated_with_http_info(shop_id, listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingImages>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->get_listing_images_deprecated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |

### Return type

[**ListingImages**](ListingImages.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upload_listing_image

> <ListingImage> upload_listing_image(shop_id, listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Uploads or assigns an image to a listing identified by a shop ID with a listing ID. To upload a new image, set the image file as the value for the `image` parameter. You can assign a previously deleted image to a listing using the deleted image's image ID in the `listing_image_id` parameter. When a request contains both `image` and `listing_image_id` parameter values, the endpoint uploads the image in the `image` parameter only. Note: When uploading a new image, data such as colors and size may return as null values due to asynchronous processing of the image. Use getListingImage endpoint to fetch these values.

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

api_instance = EtsyApi::ShopListingImageApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  image: File.new('/path/to/some/file'), # File | The file name string of a file to upload
  listing_image_id: 56, # Integer | The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction.
  rank: 56, # Integer | The positive non-zero numeric position in the images displayed in a listing, with rank 1 images appearing in the left-most position in a listing.
  overwrite: true, # Boolean | When true, this request replaces the existing image at a given rank.
  is_watermarked: true, # Boolean | When true, indicates that the uploaded image has a watermark.
  alt_text: 'alt_text_example' # String | Alt text for the listing image.
}

begin
  
  result = api_instance.upload_listing_image(shop_id, listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->upload_listing_image: #{e}"
end
```

#### Using the upload_listing_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingImage>, Integer, Hash)> upload_listing_image_with_http_info(shop_id, listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.upload_listing_image_with_http_info(shop_id, listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingImage>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingImageApi->upload_listing_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **image** | **File** | The file name string of a file to upload | [optional] |
| **listing_image_id** | **Integer** | The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction. | [optional] |
| **rank** | **Integer** | The positive non-zero numeric position in the images displayed in a listing, with rank 1 images appearing in the left-most position in a listing. | [optional][default to 1] |
| **overwrite** | **Boolean** | When true, this request replaces the existing image at a given rank. | [optional][default to false] |
| **is_watermarked** | **Boolean** | When true, indicates that the uploaded image has a watermark. | [optional][default to false] |
| **alt_text** | **String** | Alt text for the listing image. | [optional][default to &#39;&#39;] |

### Return type

[**ListingImage**](ListingImage.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

