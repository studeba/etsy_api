# EtsyApi::ShopReturnPolicyApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**consolidate_shop_return_policies**](ShopReturnPolicyApi.md#consolidate_shop_return_policies) | **POST** /v3/application/shops/{shop_id}/policies/return/consolidate |  |
| [**create_shop_return_policy**](ShopReturnPolicyApi.md#create_shop_return_policy) | **POST** /v3/application/shops/{shop_id}/policies/return |  |
| [**delete_shop_return_policy**](ShopReturnPolicyApi.md#delete_shop_return_policy) | **DELETE** /v3/application/shops/{shop_id}/policies/return/{return_policy_id} |  |
| [**get_shop_return_policies**](ShopReturnPolicyApi.md#get_shop_return_policies) | **GET** /v3/application/shops/{shop_id}/policies/return |  |
| [**get_shop_return_policy**](ShopReturnPolicyApi.md#get_shop_return_policy) | **GET** /v3/application/shops/{shop_id}/policies/return/{return_policy_id} |  |
| [**update_shop_return_policy**](ShopReturnPolicyApi.md#update_shop_return_policy) | **PUT** /v3/application/shops/{shop_id}/policies/return/{return_policy_id} |  |


## consolidate_shop_return_policies

> <ShopReturnPolicy> consolidate_shop_return_policies(shop_id, source_return_policy_id, destination_return_policy_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-denim-tint wt-mr-xs-2\">Beta</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Give feedback</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready to use as defined below. Changes may occur before launch, but we received satisfactory feedback on the interface and don’t expect any breaking changes.</p></div>  Consolidates Return Policies by moving all listings from a source return policy to a destination return policy, and deleting the source return policy. This is commonly used in the event that a user attempts to update a Return Policy such that its data is a duplicate of some other Return Policy, which is prevented.

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

api_instance = EtsyApi::ShopReturnPolicyApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
source_return_policy_id = 56 # Integer | The numeric ID of the Return Policy.
destination_return_policy_id = 56 # Integer | The numeric ID of the Return Policy.

begin
  
  result = api_instance.consolidate_shop_return_policies(shop_id, source_return_policy_id, destination_return_policy_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->consolidate_shop_return_policies: #{e}"
end
```

#### Using the consolidate_shop_return_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReturnPolicy>, Integer, Hash)> consolidate_shop_return_policies_with_http_info(shop_id, source_return_policy_id, destination_return_policy_id)

```ruby
begin
  
  data, status_code, headers = api_instance.consolidate_shop_return_policies_with_http_info(shop_id, source_return_policy_id, destination_return_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReturnPolicy>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->consolidate_shop_return_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **source_return_policy_id** | **Integer** | The numeric ID of the Return Policy. |  |
| **destination_return_policy_id** | **Integer** | The numeric ID of the Return Policy. |  |

### Return type

[**ShopReturnPolicy**](ShopReturnPolicy.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## create_shop_return_policy

> <ShopReturnPolicy> create_shop_return_policy(shop_id, accepts_returns, accepts_exchanges, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-denim-tint wt-mr-xs-2\">Beta</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Give feedback</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready to use as defined below. Changes may occur before launch, but we received satisfactory feedback on the interface and don’t expect any breaking changes.</p></div>  Creates a new Return Policy. Note: if either accepts_returns or accepts_exchanges is true, then a return_deadline is required.

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

api_instance = EtsyApi::ShopReturnPolicyApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
accepts_returns = true # Boolean | 
accepts_exchanges = true # Boolean | 
opts = {
  return_deadline: 56 # Integer | The deadline for the Return Policy, measured in days. The value must be one of the following: [7, 14, 21, 30, 45, 60, 90].
}

begin
  
  result = api_instance.create_shop_return_policy(shop_id, accepts_returns, accepts_exchanges, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->create_shop_return_policy: #{e}"
end
```

#### Using the create_shop_return_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReturnPolicy>, Integer, Hash)> create_shop_return_policy_with_http_info(shop_id, accepts_returns, accepts_exchanges, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_shop_return_policy_with_http_info(shop_id, accepts_returns, accepts_exchanges, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReturnPolicy>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->create_shop_return_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **accepts_returns** | **Boolean** |  |  |
| **accepts_exchanges** | **Boolean** |  |  |
| **return_deadline** | **Integer** | The deadline for the Return Policy, measured in days. The value must be one of the following: [7, 14, 21, 30, 45, 60, 90]. | [optional] |

### Return type

[**ShopReturnPolicy**](ShopReturnPolicy.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## delete_shop_return_policy

> delete_shop_return_policy(shop_id, return_policy_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-denim-tint wt-mr-xs-2\">Beta</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Give feedback</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready to use as defined below. Changes may occur before launch, but we received satisfactory feedback on the interface and don’t expect any breaking changes.</p></div>  Deletes an existing Return Policy. Deletion is only allowed for policies which have no associated listings – move them to another policy before attempting deletion.

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

api_instance = EtsyApi::ShopReturnPolicyApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
return_policy_id = 56 # Integer | The numeric ID of the Return Policy.

begin
  
  api_instance.delete_shop_return_policy(shop_id, return_policy_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->delete_shop_return_policy: #{e}"
end
```

#### Using the delete_shop_return_policy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_shop_return_policy_with_http_info(shop_id, return_policy_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_shop_return_policy_with_http_info(shop_id, return_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->delete_shop_return_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **return_policy_id** | **Integer** | The numeric ID of the Return Policy. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_return_policies

> <ShopReturnPolicies> get_shop_return_policies(shop_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-denim-tint wt-mr-xs-2\">Beta</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Give feedback</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready to use as defined below. Changes may occur before launch, but we received satisfactory feedback on the interface and don’t expect any breaking changes.</p></div>  Returns a shop's list of existing Return Policies

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

api_instance = EtsyApi::ShopReturnPolicyApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.

begin
  
  result = api_instance.get_shop_return_policies(shop_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->get_shop_return_policies: #{e}"
end
```

#### Using the get_shop_return_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReturnPolicies>, Integer, Hash)> get_shop_return_policies_with_http_info(shop_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_return_policies_with_http_info(shop_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReturnPolicies>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->get_shop_return_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |

### Return type

[**ShopReturnPolicies**](ShopReturnPolicies.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_return_policy

> <ShopReturnPolicy> get_shop_return_policy(shop_id, return_policy_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-denim-tint wt-mr-xs-2\">Beta</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Give feedback</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready to use as defined below. Changes may occur before launch, but we received satisfactory feedback on the interface and don’t expect any breaking changes.</p></div>  Retrieves an existing Return Policy.

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

api_instance = EtsyApi::ShopReturnPolicyApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
return_policy_id = 56 # Integer | The numeric ID of the Return Policy.

begin
  
  result = api_instance.get_shop_return_policy(shop_id, return_policy_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->get_shop_return_policy: #{e}"
end
```

#### Using the get_shop_return_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReturnPolicy>, Integer, Hash)> get_shop_return_policy_with_http_info(shop_id, return_policy_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_return_policy_with_http_info(shop_id, return_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReturnPolicy>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->get_shop_return_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **return_policy_id** | **Integer** | The numeric ID of the Return Policy. |  |

### Return type

[**ShopReturnPolicy**](ShopReturnPolicy.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_shop_return_policy

> <ShopReturnPolicy> update_shop_return_policy(shop_id, return_policy_id, accepts_returns, accepts_exchanges, return_deadline)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-denim-tint wt-mr-xs-2\">Beta</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Give feedback</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready to use as defined below. Changes may occur before launch, but we received satisfactory feedback on the interface and don’t expect any breaking changes.</p></div>  Updates an existing Return Policy.

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

api_instance = EtsyApi::ShopReturnPolicyApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
return_policy_id = 56 # Integer | The numeric ID of the Return Policy.
accepts_returns = true # Boolean | 
accepts_exchanges = true # Boolean | 
return_deadline = 56 # Integer | The deadline for the Return Policy, measured in days. The value must be one of the following: [7, 14, 21, 30, 45, 60, 90].

begin
  
  result = api_instance.update_shop_return_policy(shop_id, return_policy_id, accepts_returns, accepts_exchanges, return_deadline)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->update_shop_return_policy: #{e}"
end
```

#### Using the update_shop_return_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReturnPolicy>, Integer, Hash)> update_shop_return_policy_with_http_info(shop_id, return_policy_id, accepts_returns, accepts_exchanges, return_deadline)

```ruby
begin
  
  data, status_code, headers = api_instance.update_shop_return_policy_with_http_info(shop_id, return_policy_id, accepts_returns, accepts_exchanges, return_deadline)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReturnPolicy>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReturnPolicyApi->update_shop_return_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **return_policy_id** | **Integer** | The numeric ID of the Return Policy. |  |
| **accepts_returns** | **Boolean** |  |  |
| **accepts_exchanges** | **Boolean** |  |  |
| **return_deadline** | **Integer** | The deadline for the Return Policy, measured in days. The value must be one of the following: [7, 14, 21, 30, 45, 60, 90]. |  |

### Return type

[**ShopReturnPolicy**](ShopReturnPolicy.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

