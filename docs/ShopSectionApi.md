# EtsyApi::ShopSectionApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_shop_section**](ShopSectionApi.md#create_shop_section) | **POST** /v3/application/shops/{shop_id}/sections |  |
| [**delete_shop_section**](ShopSectionApi.md#delete_shop_section) | **DELETE** /v3/application/shops/{shop_id}/sections/{shop_section_id} |  |
| [**get_shop_section**](ShopSectionApi.md#get_shop_section) | **GET** /v3/application/shops/{shop_id}/sections/{shop_section_id} |  |
| [**get_shop_sections**](ShopSectionApi.md#get_shop_sections) | **GET** /v3/application/shops/{shop_id}/sections |  |
| [**update_shop_section**](ShopSectionApi.md#update_shop_section) | **PUT** /v3/application/shops/{shop_id}/sections/{shop_section_id} |  |


## create_shop_section

> <ShopSection> create_shop_section(shop_id, title)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Creates a new section in a specific shop.

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

api_instance = EtsyApi::ShopSectionApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
title = 'title_example' # String | The title string for a shop section.

begin
  
  result = api_instance.create_shop_section(shop_id, title)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopSectionApi->create_shop_section: #{e}"
end
```

#### Using the create_shop_section_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopSection>, Integer, Hash)> create_shop_section_with_http_info(shop_id, title)

```ruby
begin
  
  data, status_code, headers = api_instance.create_shop_section_with_http_info(shop_id, title)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopSection>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopSectionApi->create_shop_section_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **title** | **String** | The title string for a shop section. |  |

### Return type

[**ShopSection**](ShopSection.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## delete_shop_section

> delete_shop_section(shop_id, shop_section_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Deletes a section in a specific shop given a valid shop_section_id.

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

api_instance = EtsyApi::ShopSectionApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shop_section_id = 56 # Integer | The numeric ID of a section in a specific Etsy shop.

begin
  
  api_instance.delete_shop_section(shop_id, shop_section_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopSectionApi->delete_shop_section: #{e}"
end
```

#### Using the delete_shop_section_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_shop_section_with_http_info(shop_id, shop_section_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_shop_section_with_http_info(shop_id, shop_section_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopSectionApi->delete_shop_section_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shop_section_id** | **Integer** | The numeric ID of a section in a specific Etsy shop. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_section

> <ShopSection> get_shop_section(shop_id, shop_section_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a shop section, referenced by section ID and shop ID.

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

api_instance = EtsyApi::ShopSectionApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shop_section_id = 56 # Integer | The numeric ID of a section in a specific Etsy shop.

begin
  
  result = api_instance.get_shop_section(shop_id, shop_section_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopSectionApi->get_shop_section: #{e}"
end
```

#### Using the get_shop_section_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopSection>, Integer, Hash)> get_shop_section_with_http_info(shop_id, shop_section_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_section_with_http_info(shop_id, shop_section_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopSection>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopSectionApi->get_shop_section_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shop_section_id** | **Integer** | The numeric ID of a section in a specific Etsy shop. |  |

### Return type

[**ShopSection**](ShopSection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_sections

> <ShopSections> get_shop_sections(shop_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the list of shop sections in a specific shop identified by shop ID.

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

api_instance = EtsyApi::ShopSectionApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.

begin
  
  result = api_instance.get_shop_sections(shop_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopSectionApi->get_shop_sections: #{e}"
end
```

#### Using the get_shop_sections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopSections>, Integer, Hash)> get_shop_sections_with_http_info(shop_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_sections_with_http_info(shop_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopSections>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopSectionApi->get_shop_sections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |

### Return type

[**ShopSections**](ShopSections.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_shop_section

> <ShopSection> update_shop_section(shop_id, shop_section_id, title)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Updates a section in a specific shop given a valid shop_section_id.

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

api_instance = EtsyApi::ShopSectionApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shop_section_id = 56 # Integer | The numeric ID of a section in a specific Etsy shop.
title = 'title_example' # String | The title string for a shop section.

begin
  
  result = api_instance.update_shop_section(shop_id, shop_section_id, title)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopSectionApi->update_shop_section: #{e}"
end
```

#### Using the update_shop_section_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopSection>, Integer, Hash)> update_shop_section_with_http_info(shop_id, shop_section_id, title)

```ruby
begin
  
  data, status_code, headers = api_instance.update_shop_section_with_http_info(shop_id, shop_section_id, title)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopSection>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopSectionApi->update_shop_section_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shop_section_id** | **Integer** | The numeric ID of a section in a specific Etsy shop. |  |
| **title** | **String** | The title string for a shop section. |  |

### Return type

[**ShopSection**](ShopSection.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

