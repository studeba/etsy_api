# EtsyApi::UserAddressApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_application_open_api_users_addresses_delete**](UserAddressApi.md#api_application_open_api_users_addresses_delete) | **DELETE** /v3/application/user/addresses/{user_address_id} |  |
| [**get_user_address**](UserAddressApi.md#get_user_address) | **GET** /v3/application/user/addresses/{user_address_id} |  |
| [**get_user_addresses**](UserAddressApi.md#get_user_addresses) | **GET** /v3/application/user/addresses |  |


## api_application_open_api_users_addresses_delete

> api_application_open_api_users_addresses_delete(user_address_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Open API V3 endpoint to delete a UserAddress for a User.

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

api_instance = EtsyApi::UserAddressApi.new
user_address_id = 56 # Integer | The numeric ID of the user's address.

begin
  
  api_instance.api_application_open_api_users_addresses_delete(user_address_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling UserAddressApi->api_application_open_api_users_addresses_delete: #{e}"
end
```

#### Using the api_application_open_api_users_addresses_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_application_open_api_users_addresses_delete_with_http_info(user_address_id)

```ruby
begin
  
  data, status_code, headers = api_instance.api_application_open_api_users_addresses_delete_with_http_info(user_address_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling UserAddressApi->api_application_open_api_users_addresses_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_address_id** | **Integer** | The numeric ID of the user&#39;s address. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_address

> <UserAddress> get_user_address(user_address_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-01 wt-mr-xs-2\"> Feedback only </span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Give feedback</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">Development for this endpoint is in progress. It will only return a 501 response.</p></div>  Open API V3 endpoint to retrieve a UserAddress for a User.

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

api_instance = EtsyApi::UserAddressApi.new
user_address_id = 56 # Integer | The numeric ID of the user's address.

begin
  
  result = api_instance.get_user_address(user_address_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling UserAddressApi->get_user_address: #{e}"
end
```

#### Using the get_user_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAddress>, Integer, Hash)> get_user_address_with_http_info(user_address_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_user_address_with_http_info(user_address_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAddress>
rescue EtsyApi::ApiError => e
  puts "Error when calling UserAddressApi->get_user_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_address_id** | **Integer** | The numeric ID of the user&#39;s address. |  |

### Return type

[**UserAddress**](UserAddress.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_addresses

> <UserAddresses> get_user_addresses(opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Open API V3 endpoint to retrieve UserAddresses for a User.

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

api_instance = EtsyApi::UserAddressApi.new
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56 # Integer | The number of records to skip before selecting the first result.
}

begin
  
  result = api_instance.get_user_addresses(opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling UserAddressApi->get_user_addresses: #{e}"
end
```

#### Using the get_user_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAddresses>, Integer, Hash)> get_user_addresses_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_user_addresses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAddresses>
rescue EtsyApi::ApiError => e
  puts "Error when calling UserAddressApi->get_user_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |

### Return type

[**UserAddresses**](UserAddresses.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

