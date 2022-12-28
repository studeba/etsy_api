# EtsyApi::ShopApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_shops**](ShopApi.md#find_shops) | **GET** /v3/application/shops |  |
| [**get_shop**](ShopApi.md#get_shop) | **GET** /v3/application/shops/{shop_id} |  |
| [**get_shop_by_owner_user_id**](ShopApi.md#get_shop_by_owner_user_id) | **GET** /v3/application/users/{user_id}/shops |  |
| [**update_shop**](ShopApi.md#update_shop) | **PUT** /v3/application/shops/{shop_id} |  |


## find_shops

> <Shops> find_shops(shop_name, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Open API V3 endpoint for searching shops by name. Note: We make every effort to ensure that frozen or removed shops are not included in the search results. However, rarely, due to timing issues, they may appear.

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

api_instance = EtsyApi::ShopApi.new
shop_name = 'shop_name_example' # String | The shop's name string.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56 # Integer | The number of records to skip before selecting the first result.
}

begin
  
  result = api_instance.find_shops(shop_name, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopApi->find_shops: #{e}"
end
```

#### Using the find_shops_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shops>, Integer, Hash)> find_shops_with_http_info(shop_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.find_shops_with_http_info(shop_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shops>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopApi->find_shops_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_name** | **String** | The shop&#39;s name string. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |

### Return type

[**Shops**](Shops.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop

> <Shop> get_shop(shop_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the shop identified by a specific shop ID.

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

api_instance = EtsyApi::ShopApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.

begin
  
  result = api_instance.get_shop(shop_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopApi->get_shop: #{e}"
end
```

#### Using the get_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shop>, Integer, Hash)> get_shop_with_http_info(shop_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_with_http_info(shop_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shop>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopApi->get_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |

### Return type

[**Shop**](Shop.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_by_owner_user_id

> <Shop> get_shop_by_owner_user_id(user_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the shop identified by the shop owner's user ID.

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

api_instance = EtsyApi::ShopApi.new
user_id = 56 # Integer | The numeric user ID of the [user](/documentation/reference#tag/User) who owns this shop.

begin
  
  result = api_instance.get_shop_by_owner_user_id(user_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopApi->get_shop_by_owner_user_id: #{e}"
end
```

#### Using the get_shop_by_owner_user_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shop>, Integer, Hash)> get_shop_by_owner_user_id_with_http_info(user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_by_owner_user_id_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shop>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopApi->get_shop_by_owner_user_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The numeric user ID of the [user](/documentation/reference#tag/User) who owns this shop. |  |

### Return type

[**Shop**](Shop.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_shop

> <Shop> update_shop(shop_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Update a shop. Assumes that all string parameters are provided in the shop's primary language.

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

api_instance = EtsyApi::ShopApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
opts = {
  title: 'title_example', # String | A brief heading string for the shop's main page.
  announcement: 'announcement_example', # String | An announcement string to buyers that displays on the shop's homepage.
  sale_message: 'sale_message_example', # String | A message string sent to users who complete a purchase from this shop.
  digital_sale_message: 'digital_sale_message_example' # String | A message string sent to users who purchase a digital item from this shop.
}

begin
  
  result = api_instance.update_shop(shop_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopApi->update_shop: #{e}"
end
```

#### Using the update_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shop>, Integer, Hash)> update_shop_with_http_info(shop_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_shop_with_http_info(shop_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shop>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopApi->update_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **title** | **String** | A brief heading string for the shop&#39;s main page. | [optional] |
| **announcement** | **String** | An announcement string to buyers that displays on the shop&#39;s homepage. | [optional] |
| **sale_message** | **String** | A message string sent to users who complete a purchase from this shop. | [optional] |
| **digital_sale_message** | **String** | A message string sent to users who purchase a digital item from this shop. | [optional] |

### Return type

[**Shop**](Shop.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

