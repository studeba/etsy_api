# EtsyApi::ShopListingProductApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_listing_product**](ShopListingProductApi.md#get_listing_product) | **GET** /v3/application/listings/{listing_id}/inventory/products/{product_id} |  |


## get_listing_product

> <ListingInventoryProduct> get_listing_product(listing_id, product_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Open API V3 endpoint to retrieve a ListingProduct by ID.

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

api_instance = EtsyApi::ShopListingProductApi.new
listing_id = 56 # Integer | The listing to return a ListingProduct for.
product_id = 56 # Integer | The numeric ID for a specific [product](/documentation/reference#tag/ShopListing-Product) purchased from a listing.

begin
  
  result = api_instance.get_listing_product(listing_id, product_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingProductApi->get_listing_product: #{e}"
end
```

#### Using the get_listing_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingInventoryProduct>, Integer, Hash)> get_listing_product_with_http_info(listing_id, product_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_product_with_http_info(listing_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingInventoryProduct>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingProductApi->get_listing_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The listing to return a ListingProduct for. |  |
| **product_id** | **Integer** | The numeric ID for a specific [product](/documentation/reference#tag/ShopListing-Product) purchased from a listing. |  |

### Return type

[**ListingInventoryProduct**](ListingInventoryProduct.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

