# EtsyApi::OtherApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ping**](OtherApi.md#ping) | **GET** /v3/application/openapi-ping |  |
| [**token_scopes**](OtherApi.md#token_scopes) | **POST** /v3/application/scopes |  |


## ping

> <Pong> ping



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Check to confirm connectivity to the Etsy API with an application

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

api_instance = EtsyApi::OtherApi.new

begin
  
  result = api_instance.ping
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling OtherApi->ping: #{e}"
end
```

#### Using the ping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pong>, Integer, Hash)> ping_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.ping_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pong>
rescue EtsyApi::ApiError => e
  puts "Error when calling OtherApi->ping_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Pong**](Pong.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## token_scopes

> Object token_scopes(token)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Check the scopes of the provided token

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

api_instance = EtsyApi::OtherApi.new
token = 'token_example' # String | 

begin
  
  result = api_instance.token_scopes(token)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling OtherApi->token_scopes: #{e}"
end
```

#### Using the token_scopes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> token_scopes_with_http_info(token)

```ruby
begin
  
  data, status_code, headers = api_instance.token_scopes_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue EtsyApi::ApiError => e
  puts "Error when calling OtherApi->token_scopes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  |  |

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

