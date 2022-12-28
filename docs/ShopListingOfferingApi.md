# EtsyApi::ShopListingOfferingApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_listing_offering**](ShopListingOfferingApi.md#get_listing_offering) | **GET** /v3/application/listings/{listing_id}/products/{product_id}/offerings/{product_offering_id} |  |


## get_listing_offering

> <ListingInventoryProductOffering> get_listing_offering(listing_id, product_id, product_offering_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Get an Offering for a Listing

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

api_instance = EtsyApi::ShopListingOfferingApi.new
listing_id = 56 # Integer | 
product_id = 56 # Integer | 
product_offering_id = 56 # Integer | 

begin
  
  result = api_instance.get_listing_offering(listing_id, product_id, product_offering_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingOfferingApi->get_listing_offering: #{e}"
end
```

#### Using the get_listing_offering_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingInventoryProductOffering>, Integer, Hash)> get_listing_offering_with_http_info(listing_id, product_id, product_offering_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_offering_with_http_info(listing_id, product_id, product_offering_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingInventoryProductOffering>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingOfferingApi->get_listing_offering_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** |  |  |
| **product_id** | **Integer** |  |  |
| **product_offering_id** | **Integer** |  |  |

### Return type

[**ListingInventoryProductOffering**](ListingInventoryProductOffering.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

