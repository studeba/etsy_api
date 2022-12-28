# EtsyApi::ShopListingApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_draft_listing**](ShopListingApi.md#create_draft_listing) | **POST** /v3/application/shops/{shop_id}/listings |  |
| [**delete_listing**](ShopListingApi.md#delete_listing) | **DELETE** /v3/application/listings/{listing_id} |  |
| [**delete_listing_property**](ShopListingApi.md#delete_listing_property) | **DELETE** /v3/application/shops/{shop_id}/listings/{listing_id}/properties/{property_id} |  |
| [**find_all_active_listings_by_shop**](ShopListingApi.md#find_all_active_listings_by_shop) | **GET** /v3/application/shops/{shop_id}/listings/active |  |
| [**find_all_listings_active**](ShopListingApi.md#find_all_listings_active) | **GET** /v3/application/listings/active |  |
| [**get_featured_listings_by_shop**](ShopListingApi.md#get_featured_listings_by_shop) | **GET** /v3/application/shops/{shop_id}/listings/featured |  |
| [**get_listing**](ShopListingApi.md#get_listing) | **GET** /v3/application/listings/{listing_id} |  |
| [**get_listing_properties**](ShopListingApi.md#get_listing_properties) | **GET** /v3/application/shops/{shop_id}/listings/{listing_id}/properties |  |
| [**get_listing_property**](ShopListingApi.md#get_listing_property) | **GET** /v3/application/listings/{listing_id}/properties/{property_id} |  |
| [**get_listings_by_listing_ids**](ShopListingApi.md#get_listings_by_listing_ids) | **GET** /v3/application/listings/batch |  |
| [**get_listings_by_shop**](ShopListingApi.md#get_listings_by_shop) | **GET** /v3/application/shops/{shop_id}/listings |  |
| [**get_listings_by_shop_receipt**](ShopListingApi.md#get_listings_by_shop_receipt) | **GET** /v3/application/shops/{shop_id}/receipts/{receipt_id}/listings |  |
| [**get_listings_by_shop_return_policy**](ShopListingApi.md#get_listings_by_shop_return_policy) | **GET** /v3/application/shops/{shop_id}/policies/return/{return_policy_id}/listings |  |
| [**get_listings_by_shop_section_id**](ShopListingApi.md#get_listings_by_shop_section_id) | **GET** /v3/application/shops/{shop_id}/shop-sections/listings |  |
| [**update_listing**](ShopListingApi.md#update_listing) | **PATCH** /v3/application/shops/{shop_id}/listings/{listing_id} |  |
| [**update_listing_deprecated**](ShopListingApi.md#update_listing_deprecated) | **PUT** /v3/application/shops/{shop_id}/listings/{listing_id} |  |
| [**update_listing_property**](ShopListingApi.md#update_listing_property) | **PUT** /v3/application/shops/{shop_id}/listings/{listing_id}/properties/{property_id} |  |


## create_draft_listing

> <ShopListing> create_draft_listing(shop_id, quantity, title, description, price, who_made, when_made, taxonomy_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Creates a physical draft [listing](/documentation/reference#tag/ShopListing) product in a shop on the Etsy channel.

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

api_instance = EtsyApi::ShopListingApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
quantity = 56 # Integer | The positive non-zero number of products available for purchase in the listing. Note: The listing quantity is the sum of available offering quantities. You can request the quantities for individual offerings from the ListingInventory resource using the [getListingInventory](/documentation/reference#operation/getListingInventory) endpoint.
title = 'title_example' # String | The listing's title string. When creating or updating a listing, valid title strings contain only letters, numbers, punctuation marks, mathematical symbols, whitespace characters, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{P}\\\\p{Sm}\\\\p{Zs}™©®]/u) You can only use the %, :, & and + characters once each.
description = 'description_example' # String | A description string of the product for sale in the listing.
price = 3.4 # Float | The positive non-zero price of the product. (Sold product listings are private) Note: The price is the minimum possible price. The [`getListingInventory`](/documentation/reference/#operation/getListingInventory) method requests exact prices for available offerings.
who_made = 'i_did' # String | An enumerated string indicating who made the product. Helps buyers locate the listing under the Handmade heading. Requires 'is_supply' and 'when_made'.
when_made = 'made_to_order' # String | An enumerated string for the era in which the maker made the product in this listing. Helps buyers locate the listing under the Vintage heading. Requires 'is_supply' and 'who_made'.
taxonomy_id = 56 # Integer | The numerical taxonomy ID of the listing. See [SellerTaxonomy](/documentation/reference#tag/SellerTaxonomy) and [BuyerTaxonomy](/documentation/reference#tag/BuyerTaxonomy) for more information.
opts = {
  shipping_profile_id: 56, # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.
  return_policy_id: 56, # Integer | The numeric ID of the Return Policy. Note: As of January 31, 2023 this will be required. This requirement does not apply to listings of EU-based shops.
  materials: ['inner_example'], # Array<String> | A list of material strings for materials used in the product. Valid materials strings contain only letters, numbers, and whitespace characters. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}]/u) Default value is null.
  shop_section_id: 56, # Integer | The numeric ID of the [shop section](/documentation/reference#tag/Shop-Section) for this listing. Default value is null.
  processing_min: 56, # Integer | The minimum number of days required to process this listing. Default value is null.
  processing_max: 56, # Integer | The maximum number of days required to process this listing. Default value is null.
  tags: ['inner_example'], # Array<String> | A comma-separated list of tag strings for the listing. When creating or updating a listing, valid tag strings contain only letters, numbers, whitespace characters, -, ', ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}\\\\-'™©®]/u) Default value is null.
  styles: ['inner_example'], # Array<String> | An array of style strings for this listing, each of which is free-form text string such as \\\"Formal\\\", or \\\"Steampunk\\\". When creating or updating a listing, the listing may have up to two styles. Valid style strings contain only letters, numbers, and whitespace characters. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}]/u) Default value is null.
  item_weight: 3.4, # Float | The numeric weight of the product measured in units set in 'item_weight_unit'. Default value is null. If set, the value must be greater than 0.
  item_length: 3.4, # Float | The numeric length of the product measured in units set in 'item_dimensions_unit'. Default value is null. If set, the value must be greater than 0.
  item_width: 3.4, # Float | The numeric width of the product measured in units set in 'item_dimensions_unit'. Default value is null. If set, the value must be greater than 0.
  item_height: 3.4, # Float | The numeric height of the product measured in units set in 'item_dimensions_unit'. Default value is null. If set, the value must be greater than 0.
  item_weight_unit: 'oz', # String | A string defining the units used to measure the weight of the product. Default value is null.
  item_dimensions_unit: 'in', # String | A string defining the units used to measure the dimensions of the product. Default value is null.
  is_personalizable: true, # Boolean | When true, this listing is personalizable. The default value is null.
  personalization_is_required: true, # Boolean | When true, this listing requires personalization. The default value is null. Will only change if is_personalizable is 'true'.
  personalization_char_count_max: 56, # Integer | This is an integer value representing the maximum length for the personalization message entered by the buyer. Will only change if is_personalizable is 'true'.
  personalization_instructions: 'personalization_instructions_example', # String | A string representing instructions for the buyer to enter the personalization. Will only change if is_personalizable is 'true'.
  production_partner_ids: [37], # Array<Integer> | An array of unique IDs of production partner ids.
  image_ids: [37], # Array<Integer> | An array of numeric image IDs of the images in a listing, which can include up to 10 images.
  is_supply: true, # Boolean | When true, tags the listing as a supply product, else indicates that it's a finished product. Helps buyers locate the listing under the Supplies heading. Requires 'who_made' and 'when_made'.
  is_customizable: true, # Boolean | When true, a buyer may contact the seller for a customized order. The default value is true when a shop accepts custom orders. Does not apply to shops that do not accept custom orders.
  should_auto_renew: true, # Boolean | When true, renews a listing for four months upon expiration.
  is_taxable: true, # Boolean | When true, applicable [shop](/documentation/reference#tag/Shop) tax rates apply to this listing at checkout.
  type: 'physical' # String | An enumerated type string that indicates whether the listing is physical or a digital download.
}

begin
  
  result = api_instance.create_draft_listing(shop_id, quantity, title, description, price, who_made, when_made, taxonomy_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->create_draft_listing: #{e}"
end
```

#### Using the create_draft_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListing>, Integer, Hash)> create_draft_listing_with_http_info(shop_id, quantity, title, description, price, who_made, when_made, taxonomy_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_draft_listing_with_http_info(shop_id, quantity, title, description, price, who_made, when_made, taxonomy_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListing>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->create_draft_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **quantity** | **Integer** | The positive non-zero number of products available for purchase in the listing. Note: The listing quantity is the sum of available offering quantities. You can request the quantities for individual offerings from the ListingInventory resource using the [getListingInventory](/documentation/reference#operation/getListingInventory) endpoint. |  |
| **title** | **String** | The listing&#39;s title string. When creating or updating a listing, valid title strings contain only letters, numbers, punctuation marks, mathematical symbols, whitespace characters, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{P}\\\\p{Sm}\\\\p{Zs}™©®]/u) You can only use the %, :, &amp; and + characters once each. |  |
| **description** | **String** | A description string of the product for sale in the listing. |  |
| **price** | **Float** | The positive non-zero price of the product. (Sold product listings are private) Note: The price is the minimum possible price. The [&#x60;getListingInventory&#x60;](/documentation/reference/#operation/getListingInventory) method requests exact prices for available offerings. |  |
| **who_made** | **String** | An enumerated string indicating who made the product. Helps buyers locate the listing under the Handmade heading. Requires &#39;is_supply&#39; and &#39;when_made&#39;. |  |
| **when_made** | **String** | An enumerated string for the era in which the maker made the product in this listing. Helps buyers locate the listing under the Vintage heading. Requires &#39;is_supply&#39; and &#39;who_made&#39;. |  |
| **taxonomy_id** | **Integer** | The numerical taxonomy ID of the listing. See [SellerTaxonomy](/documentation/reference#tag/SellerTaxonomy) and [BuyerTaxonomy](/documentation/reference#tag/BuyerTaxonomy) for more information. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. | [optional] |
| **return_policy_id** | **Integer** | The numeric ID of the Return Policy. Note: As of January 31, 2023 this will be required. This requirement does not apply to listings of EU-based shops. | [optional] |
| **materials** | [**Array&lt;String&gt;**](String.md) | A list of material strings for materials used in the product. Valid materials strings contain only letters, numbers, and whitespace characters. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}]/u) Default value is null. | [optional] |
| **shop_section_id** | **Integer** | The numeric ID of the [shop section](/documentation/reference#tag/Shop-Section) for this listing. Default value is null. | [optional] |
| **processing_min** | **Integer** | The minimum number of days required to process this listing. Default value is null. | [optional] |
| **processing_max** | **Integer** | The maximum number of days required to process this listing. Default value is null. | [optional] |
| **tags** | [**Array&lt;String&gt;**](String.md) | A comma-separated list of tag strings for the listing. When creating or updating a listing, valid tag strings contain only letters, numbers, whitespace characters, -, &#39;, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}\\\\-&#39;™©®]/u) Default value is null. | [optional] |
| **styles** | [**Array&lt;String&gt;**](String.md) | An array of style strings for this listing, each of which is free-form text string such as \\\&quot;Formal\\\&quot;, or \\\&quot;Steampunk\\\&quot;. When creating or updating a listing, the listing may have up to two styles. Valid style strings contain only letters, numbers, and whitespace characters. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}]/u) Default value is null. | [optional] |
| **item_weight** | **Float** | The numeric weight of the product measured in units set in &#39;item_weight_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_length** | **Float** | The numeric length of the product measured in units set in &#39;item_dimensions_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_width** | **Float** | The numeric width of the product measured in units set in &#39;item_dimensions_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_height** | **Float** | The numeric height of the product measured in units set in &#39;item_dimensions_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_weight_unit** | **String** | A string defining the units used to measure the weight of the product. Default value is null. | [optional] |
| **item_dimensions_unit** | **String** | A string defining the units used to measure the dimensions of the product. Default value is null. | [optional] |
| **is_personalizable** | **Boolean** | When true, this listing is personalizable. The default value is null. | [optional] |
| **personalization_is_required** | **Boolean** | When true, this listing requires personalization. The default value is null. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **personalization_char_count_max** | **Integer** | This is an integer value representing the maximum length for the personalization message entered by the buyer. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **personalization_instructions** | **String** | A string representing instructions for the buyer to enter the personalization. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **production_partner_ids** | [**Array&lt;Integer&gt;**](Integer.md) | An array of unique IDs of production partner ids. | [optional] |
| **image_ids** | [**Array&lt;Integer&gt;**](Integer.md) | An array of numeric image IDs of the images in a listing, which can include up to 10 images. | [optional] |
| **is_supply** | **Boolean** | When true, tags the listing as a supply product, else indicates that it&#39;s a finished product. Helps buyers locate the listing under the Supplies heading. Requires &#39;who_made&#39; and &#39;when_made&#39;. | [optional] |
| **is_customizable** | **Boolean** | When true, a buyer may contact the seller for a customized order. The default value is true when a shop accepts custom orders. Does not apply to shops that do not accept custom orders. | [optional] |
| **should_auto_renew** | **Boolean** | When true, renews a listing for four months upon expiration. | [optional] |
| **is_taxable** | **Boolean** | When true, applicable [shop](/documentation/reference#tag/Shop) tax rates apply to this listing at checkout. | [optional] |
| **type** | **String** | An enumerated type string that indicates whether the listing is physical or a digital download. | [optional] |

### Return type

[**ShopListing**](ShopListing.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## delete_listing

> delete_listing(listing_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Open API V3 endpoint to delete a ShopListing. A ShopListing can be deleted only if the state is one of the following:  SOLD_OUT, DRAFT, EXPIRED, INACTIVE, ACTIVE and is_available or ACTIVE and has seller flags:  SUPRESSED (frozen), VACATION, CUSTOM_SHOPS (pattern), SELL_ON_FACEBOOK

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

api_instance = EtsyApi::ShopListingApi.new
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.

begin
  
  api_instance.delete_listing(listing_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->delete_listing: #{e}"
end
```

#### Using the delete_listing_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_listing_with_http_info(listing_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_listing_with_http_info(listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->delete_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_listing_property

> delete_listing_property(shop_id, listing_id, property_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Deletes a property for a Listing.

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

api_instance = EtsyApi::ShopListingApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
property_id = 56 # Integer | The unique ID of an Etsy [listing property](/documentation/reference#operation/getListingProperties).

begin
  
  api_instance.delete_listing_property(shop_id, listing_id, property_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->delete_listing_property: #{e}"
end
```

#### Using the delete_listing_property_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_listing_property_with_http_info(shop_id, listing_id, property_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_listing_property_with_http_info(shop_id, listing_id, property_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->delete_listing_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **property_id** | **Integer** | The unique ID of an Etsy [listing property](/documentation/reference#operation/getListingProperties). |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_active_listings_by_shop

> <ShopListings> find_all_active_listings_by_shop(shop_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a list of all active listings on Etsy in a specific shop, paginated by listing creation date.

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

api_instance = EtsyApi::ShopListingApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  sort_on: 'created', # String | The value to sort a search result of listings on. NOTES: a) `sort_on` only works when combined with one of the search options (keywords, region, etc.). b) when using `score` the returned results will always be in _descending_ order, regardless of the `sort_order` parameter.
  sort_order: 'asc', # String | The ascending(up) or descending(down) order to sort listings by. NOTE: sort_order only works when combined with one of the search options (keywords, region, etc.).
  offset: 56, # Integer | The number of records to skip before selecting the first result.
  keywords: 'keywords_example' # String | Search term or phrase that must appear in all results.
}

begin
  
  result = api_instance.find_all_active_listings_by_shop(shop_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->find_all_active_listings_by_shop: #{e}"
end
```

#### Using the find_all_active_listings_by_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListings>, Integer, Hash)> find_all_active_listings_by_shop_with_http_info(shop_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.find_all_active_listings_by_shop_with_http_info(shop_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListings>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->find_all_active_listings_by_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **sort_on** | **String** | The value to sort a search result of listings on. NOTES: a) &#x60;sort_on&#x60; only works when combined with one of the search options (keywords, region, etc.). b) when using &#x60;score&#x60; the returned results will always be in _descending_ order, regardless of the &#x60;sort_order&#x60; parameter. | [optional][default to &#39;created&#39;] |
| **sort_order** | **String** | The ascending(up) or descending(down) order to sort listings by. NOTE: sort_order only works when combined with one of the search options (keywords, region, etc.). | [optional][default to &#39;desc&#39;] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |
| **keywords** | **String** | Search term or phrase that must appear in all results. | [optional] |

### Return type

[**ShopListings**](ShopListings.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_listings_active

> <ShopListings> find_all_listings_active(opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  A list of all active listings on Etsy paginated by their creation date. Without sort_order listings will be returned newest-first by default.

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

api_instance = EtsyApi::ShopListingApi.new
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56, # Integer | The number of records to skip before selecting the first result.
  keywords: 'keywords_example', # String | Search term or phrase that must appear in all results.
  sort_on: 'created', # String | The value to sort a search result of listings on. NOTES: a) `sort_on` only works when combined with one of the search options (keywords, region, etc.). b) when using `score` the returned results will always be in _descending_ order, regardless of the `sort_order` parameter.
  sort_order: 'asc', # String | The ascending(up) or descending(down) order to sort listings by. NOTE: sort_order only works when combined with one of the search options (keywords, region, etc.).
  min_price: 3.4, # Float | The minimum price of listings to be returned by a search result.
  max_price: 3.4, # Float | The maximum price of listings to be returned by a search result.
  taxonomy_id: 56, # Integer | The numerical taxonomy ID of the listing. See [SellerTaxonomy](/documentation/reference#tag/SellerTaxonomy) and [BuyerTaxonomy](/documentation/reference#tag/BuyerTaxonomy) for more information.
  shop_location: 'shop_location_example' # String | Filters by shop location. If location cannot be parsed, Etsy responds with an error.
}

begin
  
  result = api_instance.find_all_listings_active(opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->find_all_listings_active: #{e}"
end
```

#### Using the find_all_listings_active_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListings>, Integer, Hash)> find_all_listings_active_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.find_all_listings_active_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListings>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->find_all_listings_active_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |
| **keywords** | **String** | Search term or phrase that must appear in all results. | [optional] |
| **sort_on** | **String** | The value to sort a search result of listings on. NOTES: a) &#x60;sort_on&#x60; only works when combined with one of the search options (keywords, region, etc.). b) when using &#x60;score&#x60; the returned results will always be in _descending_ order, regardless of the &#x60;sort_order&#x60; parameter. | [optional][default to &#39;created&#39;] |
| **sort_order** | **String** | The ascending(up) or descending(down) order to sort listings by. NOTE: sort_order only works when combined with one of the search options (keywords, region, etc.). | [optional][default to &#39;desc&#39;] |
| **min_price** | **Float** | The minimum price of listings to be returned by a search result. | [optional] |
| **max_price** | **Float** | The maximum price of listings to be returned by a search result. | [optional] |
| **taxonomy_id** | **Integer** | The numerical taxonomy ID of the listing. See [SellerTaxonomy](/documentation/reference#tag/SellerTaxonomy) and [BuyerTaxonomy](/documentation/reference#tag/BuyerTaxonomy) for more information. | [optional] |
| **shop_location** | **String** | Filters by shop location. If location cannot be parsed, Etsy responds with an error. | [optional] |

### Return type

[**ShopListings**](ShopListings.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_featured_listings_by_shop

> <ShopListings> get_featured_listings_by_shop(shop_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves Listings associated to a Shop that are featured.

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

api_instance = EtsyApi::ShopListingApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56 # Integer | The number of records to skip before selecting the first result.
}

begin
  
  result = api_instance.get_featured_listings_by_shop(shop_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_featured_listings_by_shop: #{e}"
end
```

#### Using the get_featured_listings_by_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListings>, Integer, Hash)> get_featured_listings_by_shop_with_http_info(shop_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_featured_listings_by_shop_with_http_info(shop_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListings>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_featured_listings_by_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |

### Return type

[**ShopListings**](ShopListings.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing

> <ShopListingWithAssociations> get_listing(listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a listing record by listing ID.

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

api_instance = EtsyApi::ShopListingApi.new
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  includes: ['Shipping'] # Array<String> | An enumerated string that attaches a valid association. Acceptable inputs are 'Shipping', 'Shop', 'Images', 'User', 'Translations' and 'Inventory'.
}

begin
  
  result = api_instance.get_listing(listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listing: #{e}"
end
```

#### Using the get_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListingWithAssociations>, Integer, Hash)> get_listing_with_http_info(listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_with_http_info(listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListingWithAssociations>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **includes** | [**Array&lt;String&gt;**](String.md) | An enumerated string that attaches a valid association. Acceptable inputs are &#39;Shipping&#39;, &#39;Shop&#39;, &#39;Images&#39;, &#39;User&#39;, &#39;Translations&#39; and &#39;Inventory&#39;. | [optional] |

### Return type

[**ShopListingWithAssociations**](ShopListingWithAssociations.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_properties

> <ListingPropertyValues> get_listing_properties(shop_id, listing_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Get a listing's properties

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

api_instance = EtsyApi::ShopListingApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.

begin
  
  result = api_instance.get_listing_properties(shop_id, listing_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listing_properties: #{e}"
end
```

#### Using the get_listing_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingPropertyValues>, Integer, Hash)> get_listing_properties_with_http_info(shop_id, listing_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_properties_with_http_info(shop_id, listing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingPropertyValues>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listing_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |

### Return type

[**ListingPropertyValues**](ListingPropertyValues.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_property

> <ListingPropertyValue> get_listing_property(listing_id, property_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-01 wt-mr-xs-2\"> Feedback only </span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Give feedback</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">Development for this endpoint is in progress. It will only return a 501 response.</p></div>  Retrieves a listing's property

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

api_instance = EtsyApi::ShopListingApi.new
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
property_id = 56 # Integer | The unique ID of an Etsy [listing property](/documentation/reference#operation/getListingProperties).

begin
  
  result = api_instance.get_listing_property(listing_id, property_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listing_property: #{e}"
end
```

#### Using the get_listing_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingPropertyValue>, Integer, Hash)> get_listing_property_with_http_info(listing_id, property_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_property_with_http_info(listing_id, property_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingPropertyValue>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listing_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **property_id** | **Integer** | The unique ID of an Etsy [listing property](/documentation/reference#operation/getListingProperties). |  |

### Return type

[**ListingPropertyValue**](ListingPropertyValue.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listings_by_listing_ids

> <ShopListingsWithAssociations> get_listings_by_listing_ids(listing_ids, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Allows to query multiple listing ids at once. Limit 100 ids maximum per query.

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

api_instance = EtsyApi::ShopListingApi.new
listing_ids = [37] # Array<Integer> | The list of numeric IDS for the listings in a specific Etsy shop.
opts = {
  includes: ['Shipping'] # Array<String> | An enumerated string that attaches a valid association. Acceptable inputs are 'Shipping', 'Shop', 'Images', 'User', 'Translations' and 'Inventory'.
}

begin
  
  result = api_instance.get_listings_by_listing_ids(listing_ids, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listings_by_listing_ids: #{e}"
end
```

#### Using the get_listings_by_listing_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListingsWithAssociations>, Integer, Hash)> get_listings_by_listing_ids_with_http_info(listing_ids, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listings_by_listing_ids_with_http_info(listing_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListingsWithAssociations>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listings_by_listing_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_ids** | [**Array&lt;Integer&gt;**](Integer.md) | The list of numeric IDS for the listings in a specific Etsy shop. |  |
| **includes** | [**Array&lt;String&gt;**](String.md) | An enumerated string that attaches a valid association. Acceptable inputs are &#39;Shipping&#39;, &#39;Shop&#39;, &#39;Images&#39;, &#39;User&#39;, &#39;Translations&#39; and &#39;Inventory&#39;. | [optional] |

### Return type

[**ShopListingsWithAssociations**](ShopListingsWithAssociations.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listings_by_shop

> <ShopListingsWithAssociations> get_listings_by_shop(shop_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Endpoint to list Listings that belong to a Shop. Listings can be filtered using the 'state' param.

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

api_instance = EtsyApi::ShopListingApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
opts = {
  state: 'active', # String | When _updating_ a listing, this value can be either `active` or `inactive`. Note: Setting a `draft` listing to `active` will also publish the listing on etsy.com. Setting a `sold_out` listing to active will update the quantity to 1 and renew the listing on etsy.com.
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56, # Integer | The number of records to skip before selecting the first result.
  sort_on: 'created', # String | The value to sort a search result of listings on. NOTES: a) `sort_on` only works when combined with one of the search options (keywords, region, etc.). b) when using `score` the returned results will always be in _descending_ order, regardless of the `sort_order` parameter.
  sort_order: 'asc', # String | The ascending(up) or descending(down) order to sort listings by. NOTE: sort_order only works when combined with one of the search options (keywords, region, etc.).
  includes: ['Shipping'] # Array<String> | An enumerated string that attaches a valid association. Acceptable inputs are 'Shipping', 'Shop', 'Images', 'User', 'Translations' and 'Inventory'.
}

begin
  
  result = api_instance.get_listings_by_shop(shop_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listings_by_shop: #{e}"
end
```

#### Using the get_listings_by_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListingsWithAssociations>, Integer, Hash)> get_listings_by_shop_with_http_info(shop_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listings_by_shop_with_http_info(shop_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListingsWithAssociations>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listings_by_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **state** | **String** | When _updating_ a listing, this value can be either &#x60;active&#x60; or &#x60;inactive&#x60;. Note: Setting a &#x60;draft&#x60; listing to &#x60;active&#x60; will also publish the listing on etsy.com. Setting a &#x60;sold_out&#x60; listing to active will update the quantity to 1 and renew the listing on etsy.com. | [optional][default to &#39;active&#39;] |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |
| **sort_on** | **String** | The value to sort a search result of listings on. NOTES: a) &#x60;sort_on&#x60; only works when combined with one of the search options (keywords, region, etc.). b) when using &#x60;score&#x60; the returned results will always be in _descending_ order, regardless of the &#x60;sort_order&#x60; parameter. | [optional][default to &#39;created&#39;] |
| **sort_order** | **String** | The ascending(up) or descending(down) order to sort listings by. NOTE: sort_order only works when combined with one of the search options (keywords, region, etc.). | [optional][default to &#39;desc&#39;] |
| **includes** | [**Array&lt;String&gt;**](String.md) | An enumerated string that attaches a valid association. Acceptable inputs are &#39;Shipping&#39;, &#39;Shop&#39;, &#39;Images&#39;, &#39;User&#39;, &#39;Translations&#39; and &#39;Inventory&#39;. | [optional] |

### Return type

[**ShopListingsWithAssociations**](ShopListingsWithAssociations.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listings_by_shop_receipt

> <ShopListings> get_listings_by_shop_receipt(receipt_id, shop_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Gets all listings associated with a receipt.

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

api_instance = EtsyApi::ShopListingApi.new
receipt_id = 56 # Integer | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction.
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56 # Integer | The number of records to skip before selecting the first result.
}

begin
  
  result = api_instance.get_listings_by_shop_receipt(receipt_id, shop_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listings_by_shop_receipt: #{e}"
end
```

#### Using the get_listings_by_shop_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListings>, Integer, Hash)> get_listings_by_shop_receipt_with_http_info(receipt_id, shop_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listings_by_shop_receipt_with_http_info(receipt_id, shop_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListings>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listings_by_shop_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **receipt_id** | **Integer** | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction. |  |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |

### Return type

[**ShopListings**](ShopListings.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listings_by_shop_return_policy

> <ShopListings> get_listings_by_shop_return_policy(return_policy_id, shop_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-denim-tint wt-mr-xs-2\">Beta</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Give feedback</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready to use as defined below. Changes may occur before launch, but we received satisfactory feedback on the interface and don’t expect any breaking changes.</p></div>  Gets all listings associated with a Return Policy.

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

api_instance = EtsyApi::ShopListingApi.new
return_policy_id = 56 # Integer | The numeric ID of the Return Policy.
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.

begin
  
  result = api_instance.get_listings_by_shop_return_policy(return_policy_id, shop_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listings_by_shop_return_policy: #{e}"
end
```

#### Using the get_listings_by_shop_return_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListings>, Integer, Hash)> get_listings_by_shop_return_policy_with_http_info(return_policy_id, shop_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listings_by_shop_return_policy_with_http_info(return_policy_id, shop_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListings>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listings_by_shop_return_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_policy_id** | **Integer** | The numeric ID of the Return Policy. |  |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |

### Return type

[**ShopListings**](ShopListings.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listings_by_shop_section_id

> <ShopListings> get_listings_by_shop_section_id(shop_id, shop_section_ids, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves all the listings from the section of a specific shop.

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

api_instance = EtsyApi::ShopListingApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shop_section_ids = [37] # Array<Integer> | A list of numeric IDS for all sections in a specific Etsy shop.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56, # Integer | The number of records to skip before selecting the first result.
  sort_on: 'created', # String | The value to sort a search result of listings on. NOTES: a) `sort_on` only works when combined with one of the search options (keywords, region, etc.). b) when using `score` the returned results will always be in _descending_ order, regardless of the `sort_order` parameter.
  sort_order: 'asc' # String | The ascending(up) or descending(down) order to sort listings by. NOTE: sort_order only works when combined with one of the search options (keywords, region, etc.).
}

begin
  
  result = api_instance.get_listings_by_shop_section_id(shop_id, shop_section_ids, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listings_by_shop_section_id: #{e}"
end
```

#### Using the get_listings_by_shop_section_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListings>, Integer, Hash)> get_listings_by_shop_section_id_with_http_info(shop_id, shop_section_ids, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listings_by_shop_section_id_with_http_info(shop_id, shop_section_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListings>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->get_listings_by_shop_section_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shop_section_ids** | [**Array&lt;Integer&gt;**](Integer.md) | A list of numeric IDS for all sections in a specific Etsy shop. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |
| **sort_on** | **String** | The value to sort a search result of listings on. NOTES: a) &#x60;sort_on&#x60; only works when combined with one of the search options (keywords, region, etc.). b) when using &#x60;score&#x60; the returned results will always be in _descending_ order, regardless of the &#x60;sort_order&#x60; parameter. | [optional][default to &#39;created&#39;] |
| **sort_order** | **String** | The ascending(up) or descending(down) order to sort listings by. NOTE: sort_order only works when combined with one of the search options (keywords, region, etc.). | [optional][default to &#39;desc&#39;] |

### Return type

[**ShopListings**](ShopListings.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_listing

> <ShopListing> update_listing(shop_id, listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Updates a listing, identified by a listing ID, for a specific shop identified by a shop ID. Note that this is a PATCH method type.

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

api_instance = EtsyApi::ShopListingApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  image_ids: [37], # Array<Integer> | An array of numeric image IDs of the images in a listing, which can include up to 10 images.
  title: 'title_example', # String | The listing's title string. When creating or updating a listing, valid title strings contain only letters, numbers, punctuation marks, mathematical symbols, whitespace characters, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{P}\\\\p{Sm}\\\\p{Zs}™©®]/u) You can only use the %, :, & and + characters once each.
  description: 'description_example', # String | A description string of the product for sale in the listing.
  materials: ['inner_example'], # Array<String> | A list of material strings for materials used in the product. Valid materials strings contain only letters, numbers, and whitespace characters. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}]/u) Default value is null.
  should_auto_renew: true, # Boolean | When true, renews a listing for four months upon expiration.
  shipping_profile_id: 56, # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.
  return_policy_id: 56, # Integer | The numeric ID of the Return Policy. Note: As of January 31, 2023 this will be required. This requirement does not apply to listings of EU-based shops.
  shop_section_id: 56, # Integer | The numeric ID of the [shop section](/documentation/reference#tag/Shop-Section) for this listing. Default value is null.
  item_weight: 3.4, # Float | The numeric weight of the product measured in units set in 'item_weight_unit'. Default value is null. If set, the value must be greater than 0.
  item_length: 3.4, # Float | The numeric length of the product measured in units set in 'item_dimensions_unit'. Default value is null. If set, the value must be greater than 0.
  item_width: 3.4, # Float | The numeric width of the product measured in units set in 'item_dimensions_unit'. Default value is null. If set, the value must be greater than 0.
  item_height: 3.4, # Float | The numeric height of the product measured in units set in 'item_dimensions_unit'. Default value is null. If set, the value must be greater than 0.
  item_weight_unit: 'item_weight_unit_example', # String | A string defining the units used to measure the weight of the product. Default value is null.
  item_dimensions_unit: 'item_dimensions_unit_example', # String | A string defining the units used to measure the dimensions of the product. Default value is null.
  is_taxable: true, # Boolean | When true, applicable [shop](/documentation/reference#tag/Shop) tax rates apply to this listing at checkout.
  taxonomy_id: 56, # Integer | The numerical taxonomy ID of the listing. See [SellerTaxonomy](/documentation/reference#tag/SellerTaxonomy) and [BuyerTaxonomy](/documentation/reference#tag/BuyerTaxonomy) for more information.
  tags: ['inner_example'], # Array<String> | A comma-separated list of tag strings for the listing. When creating or updating a listing, valid tag strings contain only letters, numbers, whitespace characters, -, ', ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}\\\\-'™©®]/u) Default value is null.
  who_made: 'i_did', # String | An enumerated string indicating who made the product. Helps buyers locate the listing under the Handmade heading. Requires 'is_supply' and 'when_made'.
  when_made: 'made_to_order', # String | An enumerated string for the era in which the maker made the product in this listing. Helps buyers locate the listing under the Vintage heading. Requires 'is_supply' and 'who_made'.
  featured_rank: 56, # Integer | The positive non-zero numeric position in the featured listings of the shop, with rank 1 listings appearing in the left-most position in featured listing on a shop’s home page.
  is_personalizable: true, # Boolean | When true, this listing is personalizable. The default value is null.
  personalization_is_required: true, # Boolean | When true, this listing requires personalization. The default value is null. Will only change if is_personalizable is 'true'.
  personalization_char_count_max: 56, # Integer | This is an integer value representing the maximum length for the personalization message entered by the buyer. Will only change if is_personalizable is 'true'.
  personalization_instructions: 'personalization_instructions_example', # String | A string representing instructions for the buyer to enter the personalization. Will only change if is_personalizable is 'true'.
  state: 'active', # String | When _updating_ a listing, this value can be either `active` or `inactive`. Note: Setting a `draft` listing to `active` will also publish the listing on etsy.com. Setting a `sold_out` listing to active will update the quantity to 1 and renew the listing on etsy.com.
  is_supply: true, # Boolean | When true, tags the listing as a supply product, else indicates that it's a finished product. Helps buyers locate the listing under the Supplies heading. Requires 'who_made' and 'when_made'.
  production_partner_ids: [37], # Array<Integer> | An array of unique IDs of production partner ids.
  type: 'physical' # String | An enumerated type string that indicates whether the listing is physical or a digital download.
}

begin
  
  result = api_instance.update_listing(shop_id, listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->update_listing: #{e}"
end
```

#### Using the update_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListing>, Integer, Hash)> update_listing_with_http_info(shop_id, listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_listing_with_http_info(shop_id, listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListing>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->update_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **image_ids** | [**Array&lt;Integer&gt;**](Integer.md) | An array of numeric image IDs of the images in a listing, which can include up to 10 images. | [optional] |
| **title** | **String** | The listing&#39;s title string. When creating or updating a listing, valid title strings contain only letters, numbers, punctuation marks, mathematical symbols, whitespace characters, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{P}\\\\p{Sm}\\\\p{Zs}™©®]/u) You can only use the %, :, &amp; and + characters once each. | [optional] |
| **description** | **String** | A description string of the product for sale in the listing. | [optional] |
| **materials** | [**Array&lt;String&gt;**](String.md) | A list of material strings for materials used in the product. Valid materials strings contain only letters, numbers, and whitespace characters. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}]/u) Default value is null. | [optional] |
| **should_auto_renew** | **Boolean** | When true, renews a listing for four months upon expiration. | [optional] |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. | [optional] |
| **return_policy_id** | **Integer** | The numeric ID of the Return Policy. Note: As of January 31, 2023 this will be required. This requirement does not apply to listings of EU-based shops. | [optional] |
| **shop_section_id** | **Integer** | The numeric ID of the [shop section](/documentation/reference#tag/Shop-Section) for this listing. Default value is null. | [optional] |
| **item_weight** | **Float** | The numeric weight of the product measured in units set in &#39;item_weight_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_length** | **Float** | The numeric length of the product measured in units set in &#39;item_dimensions_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_width** | **Float** | The numeric width of the product measured in units set in &#39;item_dimensions_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_height** | **Float** | The numeric height of the product measured in units set in &#39;item_dimensions_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_weight_unit** | **String** | A string defining the units used to measure the weight of the product. Default value is null. | [optional] |
| **item_dimensions_unit** | **String** | A string defining the units used to measure the dimensions of the product. Default value is null. | [optional] |
| **is_taxable** | **Boolean** | When true, applicable [shop](/documentation/reference#tag/Shop) tax rates apply to this listing at checkout. | [optional] |
| **taxonomy_id** | **Integer** | The numerical taxonomy ID of the listing. See [SellerTaxonomy](/documentation/reference#tag/SellerTaxonomy) and [BuyerTaxonomy](/documentation/reference#tag/BuyerTaxonomy) for more information. | [optional] |
| **tags** | [**Array&lt;String&gt;**](String.md) | A comma-separated list of tag strings for the listing. When creating or updating a listing, valid tag strings contain only letters, numbers, whitespace characters, -, &#39;, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}\\\\-&#39;™©®]/u) Default value is null. | [optional] |
| **who_made** | **String** | An enumerated string indicating who made the product. Helps buyers locate the listing under the Handmade heading. Requires &#39;is_supply&#39; and &#39;when_made&#39;. | [optional] |
| **when_made** | **String** | An enumerated string for the era in which the maker made the product in this listing. Helps buyers locate the listing under the Vintage heading. Requires &#39;is_supply&#39; and &#39;who_made&#39;. | [optional] |
| **featured_rank** | **Integer** | The positive non-zero numeric position in the featured listings of the shop, with rank 1 listings appearing in the left-most position in featured listing on a shop’s home page. | [optional] |
| **is_personalizable** | **Boolean** | When true, this listing is personalizable. The default value is null. | [optional] |
| **personalization_is_required** | **Boolean** | When true, this listing requires personalization. The default value is null. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **personalization_char_count_max** | **Integer** | This is an integer value representing the maximum length for the personalization message entered by the buyer. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **personalization_instructions** | **String** | A string representing instructions for the buyer to enter the personalization. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **state** | **String** | When _updating_ a listing, this value can be either &#x60;active&#x60; or &#x60;inactive&#x60;. Note: Setting a &#x60;draft&#x60; listing to &#x60;active&#x60; will also publish the listing on etsy.com. Setting a &#x60;sold_out&#x60; listing to active will update the quantity to 1 and renew the listing on etsy.com. | [optional] |
| **is_supply** | **Boolean** | When true, tags the listing as a supply product, else indicates that it&#39;s a finished product. Helps buyers locate the listing under the Supplies heading. Requires &#39;who_made&#39; and &#39;when_made&#39;. | [optional] |
| **production_partner_ids** | [**Array&lt;Integer&gt;**](Integer.md) | An array of unique IDs of production partner ids. | [optional] |
| **type** | **String** | An enumerated type string that indicates whether the listing is physical or a digital download. | [optional] |

### Return type

[**ShopListing**](ShopListing.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## update_listing_deprecated

> <ShopListing> update_listing_deprecated(shop_id, listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Updates a listing, identified by a listing ID, for a specific shop identified by a shop ID. This endpoint will be removed in the near future in favor of `updateListing` PATCH version.

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

api_instance = EtsyApi::ShopListingApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  image_ids: [37], # Array<Integer> | An array of numeric image IDs of the images in a listing, which can include up to 10 images.
  title: 'title_example', # String | The listing's title string. When creating or updating a listing, valid title strings contain only letters, numbers, punctuation marks, mathematical symbols, whitespace characters, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{P}\\\\p{Sm}\\\\p{Zs}™©®]/u) You can only use the %, :, & and + characters once each.
  description: 'description_example', # String | A description string of the product for sale in the listing.
  materials: ['inner_example'], # Array<String> | A list of material strings for materials used in the product. Valid materials strings contain only letters, numbers, and whitespace characters. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}]/u) Default value is null.
  should_auto_renew: true, # Boolean | When true, renews a listing for four months upon expiration.
  shipping_profile_id: 56, # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.
  shop_section_id: 56, # Integer | The numeric ID of the [shop section](/documentation/reference#tag/Shop-Section) for this listing. Default value is null.
  item_weight: 3.4, # Float | The numeric weight of the product measured in units set in 'item_weight_unit'. Default value is null. If set, the value must be greater than 0.
  item_length: 3.4, # Float | The numeric length of the product measured in units set in 'item_dimensions_unit'. Default value is null. If set, the value must be greater than 0.
  item_width: 3.4, # Float | The numeric width of the product measured in units set in 'item_dimensions_unit'. Default value is null. If set, the value must be greater than 0.
  item_height: 3.4, # Float | The numeric height of the product measured in units set in 'item_dimensions_unit'. Default value is null. If set, the value must be greater than 0.
  item_weight_unit: 'oz', # String | A string defining the units used to measure the weight of the product. Default value is null.
  item_dimensions_unit: 'in', # String | A string defining the units used to measure the dimensions of the product. Default value is null.
  is_taxable: true, # Boolean | When true, applicable [shop](/documentation/reference#tag/Shop) tax rates apply to this listing at checkout.
  taxonomy_id: 56, # Integer | The numerical taxonomy ID of the listing. See [SellerTaxonomy](/documentation/reference#tag/SellerTaxonomy) and [BuyerTaxonomy](/documentation/reference#tag/BuyerTaxonomy) for more information.
  tags: ['inner_example'], # Array<String> | A comma-separated list of tag strings for the listing. When creating or updating a listing, valid tag strings contain only letters, numbers, whitespace characters, -, ', ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}\\\\-'™©®]/u) Default value is null.
  who_made: 'i_did', # String | An enumerated string indicating who made the product. Helps buyers locate the listing under the Handmade heading. Requires 'is_supply' and 'when_made'.
  when_made: 'made_to_order', # String | An enumerated string for the era in which the maker made the product in this listing. Helps buyers locate the listing under the Vintage heading. Requires 'is_supply' and 'who_made'.
  featured_rank: 56, # Integer | The positive non-zero numeric position in the featured listings of the shop, with rank 1 listings appearing in the left-most position in featured listing on a shop’s home page.
  is_personalizable: true, # Boolean | When true, this listing is personalizable. The default value is null.
  personalization_is_required: true, # Boolean | When true, this listing requires personalization. The default value is null. Will only change if is_personalizable is 'true'.
  personalization_char_count_max: 56, # Integer | This is an integer value representing the maximum length for the personalization message entered by the buyer. Will only change if is_personalizable is 'true'.
  personalization_instructions: 'personalization_instructions_example', # String | A string representing instructions for the buyer to enter the personalization. Will only change if is_personalizable is 'true'.
  state: 'active', # String | When _updating_ a listing, this value can be either `active` or `inactive`. Note: Setting a `draft` listing to `active` will also publish the listing on etsy.com. Setting a `sold_out` listing to active will update the quantity to 1 and renew the listing on etsy.com.
  is_supply: true, # Boolean | When true, tags the listing as a supply product, else indicates that it's a finished product. Helps buyers locate the listing under the Supplies heading. Requires 'who_made' and 'when_made'.
  production_partner_ids: [37], # Array<Integer> | An array of unique IDs of production partner ids.
  type: 'physical' # String | An enumerated type string that indicates whether the listing is physical or a digital download.
}

begin
  
  result = api_instance.update_listing_deprecated(shop_id, listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->update_listing_deprecated: #{e}"
end
```

#### Using the update_listing_deprecated_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopListing>, Integer, Hash)> update_listing_deprecated_with_http_info(shop_id, listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_listing_deprecated_with_http_info(shop_id, listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopListing>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->update_listing_deprecated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **image_ids** | [**Array&lt;Integer&gt;**](Integer.md) | An array of numeric image IDs of the images in a listing, which can include up to 10 images. | [optional] |
| **title** | **String** | The listing&#39;s title string. When creating or updating a listing, valid title strings contain only letters, numbers, punctuation marks, mathematical symbols, whitespace characters, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{P}\\\\p{Sm}\\\\p{Zs}™©®]/u) You can only use the %, :, &amp; and + characters once each. | [optional] |
| **description** | **String** | A description string of the product for sale in the listing. | [optional] |
| **materials** | [**Array&lt;String&gt;**](String.md) | A list of material strings for materials used in the product. Valid materials strings contain only letters, numbers, and whitespace characters. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}]/u) Default value is null. | [optional] |
| **should_auto_renew** | **Boolean** | When true, renews a listing for four months upon expiration. | [optional] |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. | [optional] |
| **shop_section_id** | **Integer** | The numeric ID of the [shop section](/documentation/reference#tag/Shop-Section) for this listing. Default value is null. | [optional] |
| **item_weight** | **Float** | The numeric weight of the product measured in units set in &#39;item_weight_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_length** | **Float** | The numeric length of the product measured in units set in &#39;item_dimensions_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_width** | **Float** | The numeric width of the product measured in units set in &#39;item_dimensions_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_height** | **Float** | The numeric height of the product measured in units set in &#39;item_dimensions_unit&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_weight_unit** | **String** | A string defining the units used to measure the weight of the product. Default value is null. | [optional] |
| **item_dimensions_unit** | **String** | A string defining the units used to measure the dimensions of the product. Default value is null. | [optional] |
| **is_taxable** | **Boolean** | When true, applicable [shop](/documentation/reference#tag/Shop) tax rates apply to this listing at checkout. | [optional] |
| **taxonomy_id** | **Integer** | The numerical taxonomy ID of the listing. See [SellerTaxonomy](/documentation/reference#tag/SellerTaxonomy) and [BuyerTaxonomy](/documentation/reference#tag/BuyerTaxonomy) for more information. | [optional] |
| **tags** | [**Array&lt;String&gt;**](String.md) | A comma-separated list of tag strings for the listing. When creating or updating a listing, valid tag strings contain only letters, numbers, whitespace characters, -, &#39;, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}\\\\-&#39;™©®]/u) Default value is null. | [optional] |
| **who_made** | **String** | An enumerated string indicating who made the product. Helps buyers locate the listing under the Handmade heading. Requires &#39;is_supply&#39; and &#39;when_made&#39;. | [optional] |
| **when_made** | **String** | An enumerated string for the era in which the maker made the product in this listing. Helps buyers locate the listing under the Vintage heading. Requires &#39;is_supply&#39; and &#39;who_made&#39;. | [optional] |
| **featured_rank** | **Integer** | The positive non-zero numeric position in the featured listings of the shop, with rank 1 listings appearing in the left-most position in featured listing on a shop’s home page. | [optional] |
| **is_personalizable** | **Boolean** | When true, this listing is personalizable. The default value is null. | [optional] |
| **personalization_is_required** | **Boolean** | When true, this listing requires personalization. The default value is null. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **personalization_char_count_max** | **Integer** | This is an integer value representing the maximum length for the personalization message entered by the buyer. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **personalization_instructions** | **String** | A string representing instructions for the buyer to enter the personalization. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **state** | **String** | When _updating_ a listing, this value can be either &#x60;active&#x60; or &#x60;inactive&#x60;. Note: Setting a &#x60;draft&#x60; listing to &#x60;active&#x60; will also publish the listing on etsy.com. Setting a &#x60;sold_out&#x60; listing to active will update the quantity to 1 and renew the listing on etsy.com. | [optional] |
| **is_supply** | **Boolean** | When true, tags the listing as a supply product, else indicates that it&#39;s a finished product. Helps buyers locate the listing under the Supplies heading. Requires &#39;who_made&#39; and &#39;when_made&#39;. | [optional] |
| **production_partner_ids** | [**Array&lt;Integer&gt;**](Integer.md) | An array of unique IDs of production partner ids. | [optional] |
| **type** | **String** | An enumerated type string that indicates whether the listing is physical or a digital download. | [optional] |

### Return type

[**ShopListing**](ShopListing.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## update_listing_property

> <ListingPropertyValue> update_listing_property(shop_id, listing_id, property_id, value_ids, values, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Updates or populates the properties list defining product offerings for a listing. Each offering requires both a `value` and a `value_id` that are valid for a `scale_id` assigned to the listing or that you assign to the listing with this request.

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

api_instance = EtsyApi::ShopListingApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
property_id = 56 # Integer | The unique ID of an Etsy [listing property](/documentation/reference#operation/getListingProperties).
value_ids = [37] # Array<Integer> | An array of unique IDs of multiple Etsy [listing property](/documentation/reference#operation/getListingProperties) values. For example, if your listing offers different sizes of a product, then the value ID list contains value IDs for each size.
values = ['inner_example'] # Array<String> | An array of value strings for multiple Etsy [listing property](/documentation/reference#operation/getListingProperties) values. For example, if your listing offers different colored products, then the values array contains the color strings for each color. Note: parenthesis characters (`(` and `)`) are not allowed.
opts = {
  scale_id: 56 # Integer | The numeric ID of a single Etsy.com measurement scale. For example, for shoe size, there are three `scale_id`s available - `UK`, `US/Canada`, and `EU`, where `US/Canada` has `scale_id` 19.
}

begin
  
  result = api_instance.update_listing_property(shop_id, listing_id, property_id, value_ids, values, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->update_listing_property: #{e}"
end
```

#### Using the update_listing_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingPropertyValue>, Integer, Hash)> update_listing_property_with_http_info(shop_id, listing_id, property_id, value_ids, values, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_listing_property_with_http_info(shop_id, listing_id, property_id, value_ids, values, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingPropertyValue>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingApi->update_listing_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **property_id** | **Integer** | The unique ID of an Etsy [listing property](/documentation/reference#operation/getListingProperties). |  |
| **value_ids** | [**Array&lt;Integer&gt;**](Integer.md) | An array of unique IDs of multiple Etsy [listing property](/documentation/reference#operation/getListingProperties) values. For example, if your listing offers different sizes of a product, then the value ID list contains value IDs for each size. |  |
| **values** | [**Array&lt;String&gt;**](String.md) | An array of value strings for multiple Etsy [listing property](/documentation/reference#operation/getListingProperties) values. For example, if your listing offers different colored products, then the values array contains the color strings for each color. Note: parenthesis characters (&#x60;(&#x60; and &#x60;)&#x60;) are not allowed. |  |
| **scale_id** | **Integer** | The numeric ID of a single Etsy.com measurement scale. For example, for shoe size, there are three &#x60;scale_id&#x60;s available - &#x60;UK&#x60;, &#x60;US/Canada&#x60;, and &#x60;EU&#x60;, where &#x60;US/Canada&#x60; has &#x60;scale_id&#x60; 19. | [optional] |

### Return type

[**ListingPropertyValue**](ListingPropertyValue.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

