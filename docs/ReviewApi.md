# EtsyApi::ReviewApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_reviews_by_listing**](ReviewApi.md#get_reviews_by_listing) | **GET** /v3/application/listings/{listing_id}/reviews |  |
| [**get_reviews_by_shop**](ReviewApi.md#get_reviews_by_shop) | **GET** /v3/application/shops/{shop_id}/reviews |  |


## get_reviews_by_listing

> <ListingReviews> get_reviews_by_listing(listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Open API V3 to retrieve the reviews for a listing given its ID.

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

api_instance = EtsyApi::ReviewApi.new
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56, # Integer | The number of records to skip before selecting the first result.
  min_created: 56, # Integer | The earliest unix timestamp for when a record was created.
  max_created: 56 # Integer | The latest unix timestamp for when a record was created.
}

begin
  
  result = api_instance.get_reviews_by_listing(listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ReviewApi->get_reviews_by_listing: #{e}"
end
```

#### Using the get_reviews_by_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingReviews>, Integer, Hash)> get_reviews_by_listing_with_http_info(listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_reviews_by_listing_with_http_info(listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingReviews>
rescue EtsyApi::ApiError => e
  puts "Error when calling ReviewApi->get_reviews_by_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |
| **min_created** | **Integer** | The earliest unix timestamp for when a record was created. | [optional] |
| **max_created** | **Integer** | The latest unix timestamp for when a record was created. | [optional] |

### Return type

[**ListingReviews**](ListingReviews.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reviews_by_shop

> <TransactionReviews> get_reviews_by_shop(shop_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Open API V3 to retrieve the reviews from a shop given its ID.

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

api_instance = EtsyApi::ReviewApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56, # Integer | The number of records to skip before selecting the first result.
  min_created: 56, # Integer | The earliest unix timestamp for when a record was created.
  max_created: 56 # Integer | The latest unix timestamp for when a record was created.
}

begin
  
  result = api_instance.get_reviews_by_shop(shop_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ReviewApi->get_reviews_by_shop: #{e}"
end
```

#### Using the get_reviews_by_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionReviews>, Integer, Hash)> get_reviews_by_shop_with_http_info(shop_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_reviews_by_shop_with_http_info(shop_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionReviews>
rescue EtsyApi::ApiError => e
  puts "Error when calling ReviewApi->get_reviews_by_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |
| **min_created** | **Integer** | The earliest unix timestamp for when a record was created. | [optional] |
| **max_created** | **Integer** | The latest unix timestamp for when a record was created. | [optional] |

### Return type

[**TransactionReviews**](TransactionReviews.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

