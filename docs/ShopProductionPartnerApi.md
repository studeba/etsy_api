# EtsyApi::ShopProductionPartnerApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_shop_production_partners**](ShopProductionPartnerApi.md#get_shop_production_partners) | **GET** /v3/application/shops/{shop_id}/production-partners |  |


## get_shop_production_partners

> <ShopProductionPartners> get_shop_production_partners(shop_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a list of production partners available in the specific Etsy shop identified by its shop ID.

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

api_instance = EtsyApi::ShopProductionPartnerApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.

begin
  
  result = api_instance.get_shop_production_partners(shop_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopProductionPartnerApi->get_shop_production_partners: #{e}"
end
```

#### Using the get_shop_production_partners_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopProductionPartners>, Integer, Hash)> get_shop_production_partners_with_http_info(shop_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_production_partners_with_http_info(shop_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopProductionPartners>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopProductionPartnerApi->get_shop_production_partners_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |

### Return type

[**ShopProductionPartners**](ShopProductionPartners.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

