# EtsyApi::ShopListingVariationImageApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_listing_variation_images**](ShopListingVariationImageApi.md#get_listing_variation_images) | **GET** /v3/application/shops/{shop_id}/listings/{listing_id}/variation-images |  |
| [**update_variation_images**](ShopListingVariationImageApi.md#update_variation_images) | **POST** /v3/application/shops/{shop_id}/listings/{listing_id}/variation-images |  |


## get_listing_variation_images

> <ListingVariationImages> get_listing_variation_images(shop_id, listing_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Gets all variation images on a listing.

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

api_instance = EtsyApi::ShopListingVariationImageApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.

begin
  
  result = api_instance.get_listing_variation_images(shop_id, listing_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVariationImageApi->get_listing_variation_images: #{e}"
end
```

#### Using the get_listing_variation_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingVariationImages>, Integer, Hash)> get_listing_variation_images_with_http_info(shop_id, listing_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_variation_images_with_http_info(shop_id, listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingVariationImages>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVariationImageApi->get_listing_variation_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |

### Return type

[**ListingVariationImages**](ListingVariationImages.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_variation_images

> <ListingVariationImages> update_variation_images(shop_id, listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Creates variation images on a listing. `variation_images` is an array with inputs for the `property_id`, `value_id`, and `image_id` fields. `image_ids` are associated with a `ListingImage` on the listing associated with the provided `listing_id`. `property_id` and `value_id` pairs are associated with a `ListingProduct` on the listing associated with the provided `listing_id`. `variation_images` should not contain any duplicates. `variation_images` does not contain more than one `property_id` as variation images can only be associated on one property. The update overwrites all existing variation images on a listing, so if your request is successful, the variation images on the listing will be exactly those you specify. 

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

api_instance = EtsyApi::ShopListingVariationImageApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  update_variation_images_request: EtsyApi::UpdateVariationImagesRequest.new({variation_images: [EtsyApi::UpdateVariationImagesRequestVariationImagesInner.new({property_id: 37, value_id: 37, image_id: 37})]}) # UpdateVariationImagesRequest | 
}

begin
  
  result = api_instance.update_variation_images(shop_id, listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVariationImageApi->update_variation_images: #{e}"
end
```

#### Using the update_variation_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingVariationImages>, Integer, Hash)> update_variation_images_with_http_info(shop_id, listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_variation_images_with_http_info(shop_id, listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingVariationImages>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingVariationImageApi->update_variation_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **update_variation_images_request** | [**UpdateVariationImagesRequest**](UpdateVariationImagesRequest.md) |  | [optional] |

### Return type

[**ListingVariationImages**](ListingVariationImages.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

