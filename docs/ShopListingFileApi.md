# EtsyApi::ShopListingFileApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_listing_file**](ShopListingFileApi.md#delete_listing_file) | **DELETE** /v3/application/shops/{shop_id}/listings/{listing_id}/files/{listing_file_id} |  |
| [**get_all_listing_files**](ShopListingFileApi.md#get_all_listing_files) | **GET** /v3/application/shops/{shop_id}/listings/{listing_id}/files |  |
| [**get_listing_file**](ShopListingFileApi.md#get_listing_file) | **GET** /v3/application/shops/{shop_id}/listings/{listing_id}/files/{listing_file_id} |  |
| [**upload_listing_file**](ShopListingFileApi.md#upload_listing_file) | **POST** /v3/application/shops/{shop_id}/listings/{listing_id}/files |  |


## delete_listing_file

> delete_listing_file(shop_id, listing_id, listing_file_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Deletes a file from a specific listing. When you delete the final file for a digital listing, the listing converts into a physical listing. The response to a delete request returns a list of the remaining file records associated with the given listing.

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

api_instance = EtsyApi::ShopListingFileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
listing_file_id = 56 # Integer | The unique numeric ID of a file associated with a digital listing.

begin
  
  api_instance.delete_listing_file(shop_id, listing_id, listing_file_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingFileApi->delete_listing_file: #{e}"
end
```

#### Using the delete_listing_file_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_listing_file_with_http_info(shop_id, listing_id, listing_file_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_listing_file_with_http_info(shop_id, listing_id, listing_file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingFileApi->delete_listing_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **listing_file_id** | **Integer** | The unique numeric ID of a file associated with a digital listing. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_listing_files

> <ShopListingFiles> get_all_listing_files(listing_id, shop_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves all the files associated with the given digital listing. Requesting files from a physical listing returns an empty result.

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

api_instance = EtsyApi::ShopListingFileApi.new
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.

begin
  
  result = api_instance.get_all_listing_files(listing_id, shop_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingFileApi->get_all_listing_files: #{e}"
end
```

#### Using the get_all_listing_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListingFiles>, Integer, Hash)> get_all_listing_files_with_http_info(listing_id, shop_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_all_listing_files_with_http_info(listing_id, shop_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListingFiles>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingFileApi->get_all_listing_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |

### Return type

[**ShopListingFiles**](ShopListingFiles.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_file

> <ShopListingFile> get_listing_file(shop_id, listing_id, listing_file_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a single file associated with the given digital listing. Requesting a file from a physical listing returns an empty result.

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

api_instance = EtsyApi::ShopListingFileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
listing_file_id = 56 # Integer | The unique numeric ID of a file associated with a digital listing.

begin
  
  result = api_instance.get_listing_file(shop_id, listing_id, listing_file_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingFileApi->get_listing_file: #{e}"
end
```

#### Using the get_listing_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListingFile>, Integer, Hash)> get_listing_file_with_http_info(shop_id, listing_id, listing_file_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_file_with_http_info(shop_id, listing_id, listing_file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListingFile>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingFileApi->get_listing_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **listing_file_id** | **Integer** | The unique numeric ID of a file associated with a digital listing. |  |

### Return type

[**ShopListingFile**](ShopListingFile.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upload_listing_file

> <ShopListingFile> upload_listing_file(shop_id, listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Uploads a new file for a digital listing, or associates an existing file with a specific listing. You must either provide the `listing_file_id` of an existing file, or the name and binary file data for a file to upload. Associating an existing file to a physical listing converts the physical listing into a digital listing, which removes all shipping costs and any product and inventory variations.

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

api_instance = EtsyApi::ShopListingFileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  listing_file_id: 56, # Integer | The unique numeric ID of a file associated with a digital listing.
  file: File.new('/path/to/some/file'), # File | A binary file to upload.
  name: 'name_example', # String | The file name string of a file to upload
  rank: 56 # Integer | The positive non-zero numeric position in the images displayed in a listing, with rank 1 images appearing in the left-most position in a listing.
}

begin
  
  result = api_instance.upload_listing_file(shop_id, listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingFileApi->upload_listing_file: #{e}"
end
```

#### Using the upload_listing_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListingFile>, Integer, Hash)> upload_listing_file_with_http_info(shop_id, listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.upload_listing_file_with_http_info(shop_id, listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListingFile>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingFileApi->upload_listing_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **listing_file_id** | **Integer** | The unique numeric ID of a file associated with a digital listing. | [optional] |
| **file** | **File** | A binary file to upload. | [optional] |
| **name** | **String** | The file name string of a file to upload | [optional] |
| **rank** | **Integer** | The positive non-zero numeric position in the images displayed in a listing, with rank 1 images appearing in the left-most position in a listing. | [optional][default to 1] |

### Return type

[**ShopListingFile**](ShopListingFile.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

