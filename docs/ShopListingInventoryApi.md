# EtsyApi::ShopListingInventoryApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_listing_inventory**](ShopListingInventoryApi.md#get_listing_inventory) | **GET** /v3/application/listings/{listing_id}/inventory |  |
| [**update_listing_inventory**](ShopListingInventoryApi.md#update_listing_inventory) | **PUT** /v3/application/listings/{listing_id}/inventory |  |


## get_listing_inventory

> <ListingInventoryWithAssociations> get_listing_inventory(listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the inventory record for a listing. Listings you did not edit using the Etsy.com inventory tools have no inventory records. This endpoint returns SKU data if you are the owner of the inventory records being fetched.

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

api_instance = EtsyApi::ShopListingInventoryApi.new
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  show_deleted: true, # Boolean | A boolean value for inventory whether to include deleted products and their offerings. Default value is false.
  includes: 'Listing' # String | An enumerated string that attaches a valid association. Default value is null.
}

begin
  
  result = api_instance.get_listing_inventory(listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingInventoryApi->get_listing_inventory: #{e}"
end
```

#### Using the get_listing_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingInventoryWithAssociations>, Integer, Hash)> get_listing_inventory_with_http_info(listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_inventory_with_http_info(listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingInventoryWithAssociations>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingInventoryApi->get_listing_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **show_deleted** | **Boolean** | A boolean value for inventory whether to include deleted products and their offerings. Default value is false. | [optional] |
| **includes** | **String** | An enumerated string that attaches a valid association. Default value is null. | [optional] |

### Return type

[**ListingInventoryWithAssociations**](ListingInventoryWithAssociations.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_listing_inventory

> <ListingInventory> update_listing_inventory(listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Updates the inventory for a listing identified by a listing ID. The update fails if the supplied values for product sku, offering quantity, and/or price are incompatible with values in `*_on_property_*` fields. When setting a price, assign a float equal to amount divided by divisor as specified in the Money resource.

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

api_instance = EtsyApi::ShopListingInventoryApi.new
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  update_listing_inventory_request: EtsyApi::UpdateListingInventoryRequest.new({products: [EtsyApi::UpdateListingInventoryRequestProductsInner.new({offerings: [EtsyApi::UpdateListingInventoryRequestProductsInnerOfferingsInner.new({price: 3.56, quantity: 37, is_enabled: false})]})]}) # UpdateListingInventoryRequest | 
}

begin
  
  result = api_instance.update_listing_inventory(listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingInventoryApi->update_listing_inventory: #{e}"
end
```

#### Using the update_listing_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingInventory>, Integer, Hash)> update_listing_inventory_with_http_info(listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_listing_inventory_with_http_info(listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingInventory>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingInventoryApi->update_listing_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **update_listing_inventory_request** | [**UpdateListingInventoryRequest**](UpdateListingInventoryRequest.md) |  | [optional] |

### Return type

[**ListingInventory**](ListingInventory.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

