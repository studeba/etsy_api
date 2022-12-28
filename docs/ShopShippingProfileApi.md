# EtsyApi::ShopShippingProfileApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_shop_shipping_profile**](ShopShippingProfileApi.md#create_shop_shipping_profile) | **POST** /v3/application/shops/{shop_id}/shipping-profiles |  |
| [**create_shop_shipping_profile_destination**](ShopShippingProfileApi.md#create_shop_shipping_profile_destination) | **POST** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id}/destinations |  |
| [**create_shop_shipping_profile_upgrade**](ShopShippingProfileApi.md#create_shop_shipping_profile_upgrade) | **POST** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id}/upgrades |  |
| [**delete_shop_shipping_profile**](ShopShippingProfileApi.md#delete_shop_shipping_profile) | **DELETE** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id} |  |
| [**delete_shop_shipping_profile_destination**](ShopShippingProfileApi.md#delete_shop_shipping_profile_destination) | **DELETE** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id}/destinations/{shipping_profile_destination_id} |  |
| [**delete_shop_shipping_profile_upgrade**](ShopShippingProfileApi.md#delete_shop_shipping_profile_upgrade) | **DELETE** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id}/upgrades/{upgrade_id} |  |
| [**get_shipping_carriers**](ShopShippingProfileApi.md#get_shipping_carriers) | **GET** /v3/application/shipping-carriers |  |
| [**get_shop_shipping_profile**](ShopShippingProfileApi.md#get_shop_shipping_profile) | **GET** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id} |  |
| [**get_shop_shipping_profile_destinations_by_shipping_profile**](ShopShippingProfileApi.md#get_shop_shipping_profile_destinations_by_shipping_profile) | **GET** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id}/destinations |  |
| [**get_shop_shipping_profile_upgrades**](ShopShippingProfileApi.md#get_shop_shipping_profile_upgrades) | **GET** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id}/upgrades |  |
| [**get_shop_shipping_profiles**](ShopShippingProfileApi.md#get_shop_shipping_profiles) | **GET** /v3/application/shops/{shop_id}/shipping-profiles |  |
| [**update_shop_shipping_profile**](ShopShippingProfileApi.md#update_shop_shipping_profile) | **PUT** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id} |  |
| [**update_shop_shipping_profile_destination**](ShopShippingProfileApi.md#update_shop_shipping_profile_destination) | **PUT** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id}/destinations/{shipping_profile_destination_id} |  |
| [**update_shop_shipping_profile_upgrade**](ShopShippingProfileApi.md#update_shop_shipping_profile_upgrade) | **PUT** /v3/application/shops/{shop_id}/shipping-profiles/{shipping_profile_id}/upgrades/{upgrade_id} |  |


## create_shop_shipping_profile

> <ShopShippingProfile> create_shop_shipping_profile(shop_id, title, origin_country_iso, primary_cost, secondary_cost, min_processing_time, max_processing_time, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Creates a new ShippingProfile. You can pass a country iso code or a region when creating a ShippingProfile, but not both. Only one is required. You must pass either a shipping_carrier_id AND mail_class, or both min and max_delivery_days.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
title = 'title_example' # String | The name string of this shipping profile.
origin_country_iso = 'origin_country_iso_example' # String | The ISO code of the country from which the listing ships.
primary_cost = 3.4 # Float | The cost of shipping to this country/region alone, measured in the store's default currency.
secondary_cost = 3.4 # Float | The cost of shipping to this country/region with another item, measured in the store's default currency.
min_processing_time = 56 # Integer | The minimum time required to process to ship listings with this shipping profile.
max_processing_time = 56 # Integer | The maximum processing time the listing needs to ship.
opts = {
  processing_time_unit: 'business_days', # String | The unit used to represent how long a processing time is. A week is equivalent to 5 business days. If none is provided, the unit is set to \\\"business_days\\\".
  destination_country_iso: 'destination_country_iso_example', # String | The ISO code of the country to which the listing ships. If null, request sets destination to destination_region. Required if destination_region is null or not provided.
  destination_region: 'eu', # String | The code of the region to which the listing ships. A region represents a set of countries. Supported regions are Europe Union and Non-Europe Union (countries in Europe not in EU). If `none`, request sets destination to destination_country_iso. Required if destination_country_iso is null or not provided.
  origin_postal_code: 'origin_postal_code_example', # String | The postal code string (not necessarily a number) for the location from which the listing ships. Required if the `origin_country_iso` is `US` or `CA`.
  shipping_carrier_id: 56, # Integer | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with `mail_class`** if `min_delivery_days` and `max_delivery_days` are null.
  mail_class: 'mail_class_example', # String | The unique ID string of a shipping carrier's mail class, which is used to calculate an estimated delivery date. **Required with `shipping_carrier_id`** if `min_delivery_days` and `max_delivery_days` are null.
  min_delivery_days: 56, # Integer | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `max_delivery_days`** if `mail_class` is null.
  max_delivery_days: 56 # Integer | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `min_delivery_days`** if `mail_class` is null.
}

begin
  
  result = api_instance.create_shop_shipping_profile(shop_id, title, origin_country_iso, primary_cost, secondary_cost, min_processing_time, max_processing_time, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->create_shop_shipping_profile: #{e}"
end
```

#### Using the create_shop_shipping_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopShippingProfile>, Integer, Hash)> create_shop_shipping_profile_with_http_info(shop_id, title, origin_country_iso, primary_cost, secondary_cost, min_processing_time, max_processing_time, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_shop_shipping_profile_with_http_info(shop_id, title, origin_country_iso, primary_cost, secondary_cost, min_processing_time, max_processing_time, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopShippingProfile>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->create_shop_shipping_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **title** | **String** | The name string of this shipping profile. |  |
| **origin_country_iso** | **String** | The ISO code of the country from which the listing ships. |  |
| **primary_cost** | **Float** | The cost of shipping to this country/region alone, measured in the store&#39;s default currency. |  |
| **secondary_cost** | **Float** | The cost of shipping to this country/region with another item, measured in the store&#39;s default currency. |  |
| **min_processing_time** | **Integer** | The minimum time required to process to ship listings with this shipping profile. |  |
| **max_processing_time** | **Integer** | The maximum processing time the listing needs to ship. |  |
| **processing_time_unit** | **String** | The unit used to represent how long a processing time is. A week is equivalent to 5 business days. If none is provided, the unit is set to \\\&quot;business_days\\\&quot;. | [optional][default to &#39;business_days&#39;] |
| **destination_country_iso** | **String** | The ISO code of the country to which the listing ships. If null, request sets destination to destination_region. Required if destination_region is null or not provided. | [optional] |
| **destination_region** | **String** | The code of the region to which the listing ships. A region represents a set of countries. Supported regions are Europe Union and Non-Europe Union (countries in Europe not in EU). If &#x60;none&#x60;, request sets destination to destination_country_iso. Required if destination_country_iso is null or not provided. | [optional][default to &#39;none&#39;] |
| **origin_postal_code** | **String** | The postal code string (not necessarily a number) for the location from which the listing ships. Required if the &#x60;origin_country_iso&#x60; is &#x60;US&#x60; or &#x60;CA&#x60;. | [optional][default to &#39;&#39;] |
| **shipping_carrier_id** | **Integer** | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with &#x60;mail_class&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional][default to 0] |
| **mail_class** | **String** | The unique ID string of a shipping carrier&#39;s mail class, which is used to calculate an estimated delivery date. **Required with &#x60;shipping_carrier_id&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional] |
| **min_delivery_days** | **Integer** | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;max_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |
| **max_delivery_days** | **Integer** | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;min_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |

### Return type

[**ShopShippingProfile**](ShopShippingProfile.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## create_shop_shipping_profile_destination

> <ShopShippingProfileDestination> create_shop_shipping_profile_destination(shop_id, shipping_profile_id, primary_cost, secondary_cost, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Creates a new shipping destination, which sets the shipping cost, carrier, and class for a destination in a [shipping profile](/documentation/reference/#tag/Shop-ShippingProfile). createShopShippingProfileDestination assigns costs using the currency of the associated shop. Set the destination using either `destination_country_iso` or `destination_region`; `destination_country_iso` and `destination_region` are mutually exclusive — set one or the other. Setting both triggers error 400. If the request sets neither `destination_country_iso` nor `destination_region`, the default destination is \"everywhere\". You must also either assign both a `shipping_carrier_id` AND `mail_class` or both `min_delivery_days` AND `max_delivery_days`.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.
primary_cost = 3.4 # Float | The cost of shipping to this country/region alone, measured in the store's default currency.
secondary_cost = 3.4 # Float | The cost of shipping to this country/region with another item, measured in the store's default currency.
opts = {
  destination_country_iso: 'destination_country_iso_example', # String | The ISO code of the country to which the listing ships. If null, request sets destination to destination_region. Required if destination_region is null or not provided.
  destination_region: 'eu', # String | The code of the region to which the listing ships. A region represents a set of countries. Supported regions are Europe Union and Non-Europe Union (countries in Europe not in EU). If `none`, request sets destination to destination_country_iso. Required if destination_country_iso is null or not provided.
  shipping_carrier_id: 56, # Integer | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with `mail_class`** if `min_delivery_days` and `max_delivery_days` are null.
  mail_class: 'mail_class_example', # String | The unique ID string of a shipping carrier's mail class, which is used to calculate an estimated delivery date. **Required with `shipping_carrier_id`** if `min_delivery_days` and `max_delivery_days` are null.
  min_delivery_days: 56, # Integer | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `max_delivery_days`** if `mail_class` is null.
  max_delivery_days: 56 # Integer | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `min_delivery_days`** if `mail_class` is null.
}

begin
  
  result = api_instance.create_shop_shipping_profile_destination(shop_id, shipping_profile_id, primary_cost, secondary_cost, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->create_shop_shipping_profile_destination: #{e}"
end
```

#### Using the create_shop_shipping_profile_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopShippingProfileDestination>, Integer, Hash)> create_shop_shipping_profile_destination_with_http_info(shop_id, shipping_profile_id, primary_cost, secondary_cost, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_shop_shipping_profile_destination_with_http_info(shop_id, shipping_profile_id, primary_cost, secondary_cost, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopShippingProfileDestination>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->create_shop_shipping_profile_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. |  |
| **primary_cost** | **Float** | The cost of shipping to this country/region alone, measured in the store&#39;s default currency. |  |
| **secondary_cost** | **Float** | The cost of shipping to this country/region with another item, measured in the store&#39;s default currency. |  |
| **destination_country_iso** | **String** | The ISO code of the country to which the listing ships. If null, request sets destination to destination_region. Required if destination_region is null or not provided. | [optional] |
| **destination_region** | **String** | The code of the region to which the listing ships. A region represents a set of countries. Supported regions are Europe Union and Non-Europe Union (countries in Europe not in EU). If &#x60;none&#x60;, request sets destination to destination_country_iso. Required if destination_country_iso is null or not provided. | [optional][default to &#39;none&#39;] |
| **shipping_carrier_id** | **Integer** | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with &#x60;mail_class&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional][default to 0] |
| **mail_class** | **String** | The unique ID string of a shipping carrier&#39;s mail class, which is used to calculate an estimated delivery date. **Required with &#x60;shipping_carrier_id&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional] |
| **min_delivery_days** | **Integer** | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;max_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |
| **max_delivery_days** | **Integer** | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;min_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |

### Return type

[**ShopShippingProfileDestination**](ShopShippingProfileDestination.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## create_shop_shipping_profile_upgrade

> <ShopShippingProfileUpgrade> create_shop_shipping_profile_upgrade(shop_id, shipping_profile_id, type, upgrade_name, price, secondary_price, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Creates a new shipping profile upgrade, which can establish a price for a shipping option, such as an alternate carrier or faster delivery.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.
type = '0' # String | The type of the shipping upgrade. Domestic (0) or international (1).
upgrade_name = 'upgrade_name_example' # String | Name for the shipping upgrade shown to shoppers at checkout, e.g. USPS Priority.
price = 3.4 # Float | Additional cost of adding the shipping upgrade.
secondary_price = 3.4 # Float | Additional cost of adding the shipping upgrade for each additional item.
opts = {
  shipping_carrier_id: 56, # Integer | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with `mail_class`** if `min_delivery_days` and `max_delivery_days` are null.
  mail_class: 'mail_class_example', # String | The unique ID string of a shipping carrier's mail class, which is used to calculate an estimated delivery date. **Required with `shipping_carrier_id`** if `min_delivery_days` and `max_delivery_days` are null.
  min_delivery_days: 56, # Integer | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `max_delivery_days`** if `mail_class` is null.
  max_delivery_days: 56 # Integer | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `min_delivery_days`** if `mail_class` is null.
}

begin
  
  result = api_instance.create_shop_shipping_profile_upgrade(shop_id, shipping_profile_id, type, upgrade_name, price, secondary_price, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->create_shop_shipping_profile_upgrade: #{e}"
end
```

#### Using the create_shop_shipping_profile_upgrade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopShippingProfileUpgrade>, Integer, Hash)> create_shop_shipping_profile_upgrade_with_http_info(shop_id, shipping_profile_id, type, upgrade_name, price, secondary_price, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_shop_shipping_profile_upgrade_with_http_info(shop_id, shipping_profile_id, type, upgrade_name, price, secondary_price, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopShippingProfileUpgrade>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->create_shop_shipping_profile_upgrade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. |  |
| **type** | **String** | The type of the shipping upgrade. Domestic (0) or international (1). |  |
| **upgrade_name** | **String** | Name for the shipping upgrade shown to shoppers at checkout, e.g. USPS Priority. |  |
| **price** | **Float** | Additional cost of adding the shipping upgrade. |  |
| **secondary_price** | **Float** | Additional cost of adding the shipping upgrade for each additional item. |  |
| **shipping_carrier_id** | **Integer** | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with &#x60;mail_class&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional][default to 0] |
| **mail_class** | **String** | The unique ID string of a shipping carrier&#39;s mail class, which is used to calculate an estimated delivery date. **Required with &#x60;shipping_carrier_id&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional] |
| **min_delivery_days** | **Integer** | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;max_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |
| **max_delivery_days** | **Integer** | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;min_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |

### Return type

[**ShopShippingProfileUpgrade**](ShopShippingProfileUpgrade.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## delete_shop_shipping_profile

> delete_shop_shipping_profile(shop_id, shipping_profile_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Deletes a ShippingProfile by given id.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.

begin
  
  api_instance.delete_shop_shipping_profile(shop_id, shipping_profile_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->delete_shop_shipping_profile: #{e}"
end
```

#### Using the delete_shop_shipping_profile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_shop_shipping_profile_with_http_info(shop_id, shipping_profile_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_shop_shipping_profile_with_http_info(shop_id, shipping_profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->delete_shop_shipping_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_shop_shipping_profile_destination

> delete_shop_shipping_profile_destination(shop_id, shipping_profile_id, shipping_profile_destination_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Deletes a shipping destination and removes the destination option from every listing that uses the associated shipping profile. A shipping profile requires at least one shipping destination, so this endpoint cannot delete the final shipping destination for any shipping profile. To delete the final shipping destination from a shipping profile, you must [delete the entire shipping profile](/documentation/reference/#operation/deleteShopShippingProfile).

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.
shipping_profile_destination_id = 56 # Integer | The numeric ID of the shipping profile destination in the [shipping profile](/documentation/reference#tag/Shop-ShippingProfile) associated with the listing.

begin
  
  api_instance.delete_shop_shipping_profile_destination(shop_id, shipping_profile_id, shipping_profile_destination_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->delete_shop_shipping_profile_destination: #{e}"
end
```

#### Using the delete_shop_shipping_profile_destination_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_shop_shipping_profile_destination_with_http_info(shop_id, shipping_profile_id, shipping_profile_destination_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_shop_shipping_profile_destination_with_http_info(shop_id, shipping_profile_id, shipping_profile_destination_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->delete_shop_shipping_profile_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. |  |
| **shipping_profile_destination_id** | **Integer** | The numeric ID of the shipping profile destination in the [shipping profile](/documentation/reference#tag/Shop-ShippingProfile) associated with the listing. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_shop_shipping_profile_upgrade

> delete_shop_shipping_profile_upgrade(shop_id, shipping_profile_id, upgrade_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Deletes a shipping profile upgrade and removes the upgrade option from every listing that uses the associated shipping profile.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the shipping profile.
upgrade_id = 56 # Integer | The numeric ID that is associated with a shipping upgrade

begin
  
  api_instance.delete_shop_shipping_profile_upgrade(shop_id, shipping_profile_id, upgrade_id)
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->delete_shop_shipping_profile_upgrade: #{e}"
end
```

#### Using the delete_shop_shipping_profile_upgrade_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_shop_shipping_profile_upgrade_with_http_info(shop_id, shipping_profile_id, upgrade_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_shop_shipping_profile_upgrade_with_http_info(shop_id, shipping_profile_id, upgrade_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->delete_shop_shipping_profile_upgrade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the shipping profile. |  |
| **upgrade_id** | **Integer** | The numeric ID that is associated with a shipping upgrade |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shipping_carriers

> <ShippingCarriers> get_shipping_carriers(origin_country_iso)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a list of available shipping carriers and the mail classes associated with them for a given country

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

api_instance = EtsyApi::ShopShippingProfileApi.new
origin_country_iso = 'origin_country_iso_example' # String | The ISO code of the country from which the listing ships.

begin
  
  result = api_instance.get_shipping_carriers(origin_country_iso)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->get_shipping_carriers: #{e}"
end
```

#### Using the get_shipping_carriers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShippingCarriers>, Integer, Hash)> get_shipping_carriers_with_http_info(origin_country_iso)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shipping_carriers_with_http_info(origin_country_iso)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShippingCarriers>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->get_shipping_carriers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **origin_country_iso** | **String** | The ISO code of the country from which the listing ships. |  |

### Return type

[**ShippingCarriers**](ShippingCarriers.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_shipping_profile

> <ShopShippingProfile> get_shop_shipping_profile(shop_id, shipping_profile_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a Shipping Profile referenced by shipping profile ID.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.

begin
  
  result = api_instance.get_shop_shipping_profile(shop_id, shipping_profile_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->get_shop_shipping_profile: #{e}"
end
```

#### Using the get_shop_shipping_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopShippingProfile>, Integer, Hash)> get_shop_shipping_profile_with_http_info(shop_id, shipping_profile_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_shipping_profile_with_http_info(shop_id, shipping_profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopShippingProfile>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->get_shop_shipping_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. |  |

### Return type

[**ShopShippingProfile**](ShopShippingProfile.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_shipping_profile_destinations_by_shipping_profile

> <ShopShippingProfileDestinations> get_shop_shipping_profile_destinations_by_shipping_profile(shop_id, shipping_profile_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a list of shipping destination objects associated with a shipping profile.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56 # Integer | The number of records to skip before selecting the first result.
}

begin
  
  result = api_instance.get_shop_shipping_profile_destinations_by_shipping_profile(shop_id, shipping_profile_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->get_shop_shipping_profile_destinations_by_shipping_profile: #{e}"
end
```

#### Using the get_shop_shipping_profile_destinations_by_shipping_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopShippingProfileDestinations>, Integer, Hash)> get_shop_shipping_profile_destinations_by_shipping_profile_with_http_info(shop_id, shipping_profile_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_shipping_profile_destinations_by_shipping_profile_with_http_info(shop_id, shipping_profile_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopShippingProfileDestinations>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->get_shop_shipping_profile_destinations_by_shipping_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |

### Return type

[**ShopShippingProfileDestinations**](ShopShippingProfileDestinations.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_shipping_profile_upgrades

> <ShopShippingProfileUpgrades> get_shop_shipping_profile_upgrades(shop_id, shipping_profile_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the list of shipping profile upgrades assigned to a specific shipping profile.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.

begin
  
  result = api_instance.get_shop_shipping_profile_upgrades(shop_id, shipping_profile_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->get_shop_shipping_profile_upgrades: #{e}"
end
```

#### Using the get_shop_shipping_profile_upgrades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopShippingProfileUpgrades>, Integer, Hash)> get_shop_shipping_profile_upgrades_with_http_info(shop_id, shipping_profile_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_shipping_profile_upgrades_with_http_info(shop_id, shipping_profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopShippingProfileUpgrades>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->get_shop_shipping_profile_upgrades_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. |  |

### Return type

[**ShopShippingProfileUpgrades**](ShopShippingProfileUpgrades.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_shipping_profiles

> <ShopShippingProfiles> get_shop_shipping_profiles(shop_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a list of shipping profiles available in the specific Etsy shop identified by its shop ID.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.

begin
  
  result = api_instance.get_shop_shipping_profiles(shop_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->get_shop_shipping_profiles: #{e}"
end
```

#### Using the get_shop_shipping_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopShippingProfiles>, Integer, Hash)> get_shop_shipping_profiles_with_http_info(shop_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_shipping_profiles_with_http_info(shop_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopShippingProfiles>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->get_shop_shipping_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |

### Return type

[**ShopShippingProfiles**](ShopShippingProfiles.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_shop_shipping_profile

> <ShopShippingProfile> update_shop_shipping_profile(shop_id, shipping_profile_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Changes the settings in a shipping profile. You can pass a country iso code or a region when updating a ShippingProfile, but not both. Only one is required. You must pass either a shipping_carrier_id AND mail_class, or both min and max_delivery_days.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.
opts = {
  title: 'title_example', # String | The name string of this shipping profile.
  origin_country_iso: 'origin_country_iso_example', # String | The ISO code of the country from which the listing ships.
  min_processing_time: 56, # Integer | The minimum time required to process to ship listings with this shipping profile.
  max_processing_time: 56, # Integer | The maximum processing time the listing needs to ship.
  processing_time_unit: 'business_days', # String | The unit used to represent how long a processing time is. A week is equivalent to 5 business days. If none is provided, the unit is set to \\\"business_days\\\".
  origin_postal_code: 'origin_postal_code_example' # String | The postal code string (not necessarily a number) for the location from which the listing ships. Required if the `origin_country_iso` is `US` or `CA`.
}

begin
  
  result = api_instance.update_shop_shipping_profile(shop_id, shipping_profile_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->update_shop_shipping_profile: #{e}"
end
```

#### Using the update_shop_shipping_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopShippingProfile>, Integer, Hash)> update_shop_shipping_profile_with_http_info(shop_id, shipping_profile_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_shop_shipping_profile_with_http_info(shop_id, shipping_profile_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopShippingProfile>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->update_shop_shipping_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. |  |
| **title** | **String** | The name string of this shipping profile. | [optional] |
| **origin_country_iso** | **String** | The ISO code of the country from which the listing ships. | [optional] |
| **min_processing_time** | **Integer** | The minimum time required to process to ship listings with this shipping profile. | [optional] |
| **max_processing_time** | **Integer** | The maximum processing time the listing needs to ship. | [optional] |
| **processing_time_unit** | **String** | The unit used to represent how long a processing time is. A week is equivalent to 5 business days. If none is provided, the unit is set to \\\&quot;business_days\\\&quot;. | [optional][default to &#39;business_days&#39;] |
| **origin_postal_code** | **String** | The postal code string (not necessarily a number) for the location from which the listing ships. Required if the &#x60;origin_country_iso&#x60; is &#x60;US&#x60; or &#x60;CA&#x60;. | [optional] |

### Return type

[**ShopShippingProfile**](ShopShippingProfile.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## update_shop_shipping_profile_destination

> <ShopShippingProfileDestination> update_shop_shipping_profile_destination(shop_id, shipping_profile_id, shipping_profile_destination_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Updates an existing shipping destination, which can set or reassign the shipping cost, carrier, and class for a destination.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.
shipping_profile_destination_id = 56 # Integer | The numeric ID of the shipping profile destination in the [shipping profile](/documentation/reference#tag/Shop-ShippingProfile) associated with the listing.
opts = {
  primary_cost: 3.4, # Float | The cost of shipping to this country/region alone, measured in the store's default currency.
  secondary_cost: 3.4, # Float | The cost of shipping to this country/region with another item, measured in the store's default currency.
  destination_country_iso: 'destination_country_iso_example', # String | The ISO code of the country to which the listing ships. If null, request sets destination to destination_region. Required if destination_region is null or not provided.
  destination_region: 'eu', # String | The code of the region to which the listing ships. A region represents a set of countries. Supported regions are Europe Union and Non-Europe Union (countries in Europe not in EU). If `none`, request sets destination to destination_country_iso. Required if destination_country_iso is null or not provided.
  shipping_carrier_id: 56, # Integer | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with `mail_class`** if `min_delivery_days` and `max_delivery_days` are null.
  mail_class: 'mail_class_example', # String | The unique ID string of a shipping carrier's mail class, which is used to calculate an estimated delivery date. **Required with `shipping_carrier_id`** if `min_delivery_days` and `max_delivery_days` are null.
  min_delivery_days: 56, # Integer | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `max_delivery_days`** if `mail_class` is null.
  max_delivery_days: 56 # Integer | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `min_delivery_days`** if `mail_class` is null.
}

begin
  
  result = api_instance.update_shop_shipping_profile_destination(shop_id, shipping_profile_id, shipping_profile_destination_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->update_shop_shipping_profile_destination: #{e}"
end
```

#### Using the update_shop_shipping_profile_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopShippingProfileDestination>, Integer, Hash)> update_shop_shipping_profile_destination_with_http_info(shop_id, shipping_profile_id, shipping_profile_destination_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_shop_shipping_profile_destination_with_http_info(shop_id, shipping_profile_id, shipping_profile_destination_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopShippingProfileDestination>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->update_shop_shipping_profile_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. |  |
| **shipping_profile_destination_id** | **Integer** | The numeric ID of the shipping profile destination in the [shipping profile](/documentation/reference#tag/Shop-ShippingProfile) associated with the listing. |  |
| **primary_cost** | **Float** | The cost of shipping to this country/region alone, measured in the store&#39;s default currency. | [optional] |
| **secondary_cost** | **Float** | The cost of shipping to this country/region with another item, measured in the store&#39;s default currency. | [optional] |
| **destination_country_iso** | **String** | The ISO code of the country to which the listing ships. If null, request sets destination to destination_region. Required if destination_region is null or not provided. | [optional] |
| **destination_region** | **String** | The code of the region to which the listing ships. A region represents a set of countries. Supported regions are Europe Union and Non-Europe Union (countries in Europe not in EU). If &#x60;none&#x60;, request sets destination to destination_country_iso. Required if destination_country_iso is null or not provided. | [optional][default to &#39;none&#39;] |
| **shipping_carrier_id** | **Integer** | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with &#x60;mail_class&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional] |
| **mail_class** | **String** | The unique ID string of a shipping carrier&#39;s mail class, which is used to calculate an estimated delivery date. **Required with &#x60;shipping_carrier_id&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional] |
| **min_delivery_days** | **Integer** | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;max_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |
| **max_delivery_days** | **Integer** | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;min_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |

### Return type

[**ShopShippingProfileDestination**](ShopShippingProfileDestination.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## update_shop_shipping_profile_upgrade

> <ShopShippingProfileUpgrade> update_shop_shipping_profile_upgrade(shop_id, shipping_profile_id, upgrade_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Updates a shipping profile upgrade and updates any listings that use the shipping profile.

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

api_instance = EtsyApi::ShopShippingProfileApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
shipping_profile_id = 56 # Integer | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is `physical`.
upgrade_id = 56 # Integer | The numeric ID that is associated with a shipping upgrade
opts = {
  upgrade_name: 'upgrade_name_example', # String | Name for the shipping upgrade shown to shoppers at checkout, e.g. USPS Priority.
  type: '0', # String | The type of the shipping upgrade. Domestic (0) or international (1).
  price: 3.4, # Float | Additional cost of adding the shipping upgrade.
  secondary_price: 3.4, # Float | Additional cost of adding the shipping upgrade for each additional item.
  shipping_carrier_id: 56, # Integer | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with `mail_class`** if `min_delivery_days` and `max_delivery_days` are null.
  mail_class: 'mail_class_example', # String | The unique ID string of a shipping carrier's mail class, which is used to calculate an estimated delivery date. **Required with `shipping_carrier_id`** if `min_delivery_days` and `max_delivery_days` are null.
  min_delivery_days: 56, # Integer | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `max_delivery_days`** if `mail_class` is null.
  max_delivery_days: 56 # Integer | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `min_delivery_days`** if `mail_class` is null.
}

begin
  
  result = api_instance.update_shop_shipping_profile_upgrade(shop_id, shipping_profile_id, upgrade_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->update_shop_shipping_profile_upgrade: #{e}"
end
```

#### Using the update_shop_shipping_profile_upgrade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopShippingProfileUpgrade>, Integer, Hash)> update_shop_shipping_profile_upgrade_with_http_info(shop_id, shipping_profile_id, upgrade_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_shop_shipping_profile_upgrade_with_http_info(shop_id, shipping_profile_id, upgrade_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopShippingProfileUpgrade>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopShippingProfileApi->update_shop_shipping_profile_upgrade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. |  |
| **upgrade_id** | **Integer** | The numeric ID that is associated with a shipping upgrade |  |
| **upgrade_name** | **String** | Name for the shipping upgrade shown to shoppers at checkout, e.g. USPS Priority. | [optional] |
| **type** | **String** | The type of the shipping upgrade. Domestic (0) or international (1). | [optional] |
| **price** | **Float** | Additional cost of adding the shipping upgrade. | [optional] |
| **secondary_price** | **Float** | Additional cost of adding the shipping upgrade for each additional item. | [optional] |
| **shipping_carrier_id** | **Integer** | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with &#x60;mail_class&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional] |
| **mail_class** | **String** | The unique ID string of a shipping carrier&#39;s mail class, which is used to calculate an estimated delivery date. **Required with &#x60;shipping_carrier_id&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional] |
| **min_delivery_days** | **Integer** | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;max_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |
| **max_delivery_days** | **Integer** | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;min_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |

### Return type

[**ShopShippingProfileUpgrade**](ShopShippingProfileUpgrade.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

