# EtsyApi::ShopListingTranslationApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_listing_translation**](ShopListingTranslationApi.md#create_listing_translation) | **POST** /v3/application/shops/{shop_id}/listings/{listing_id}/translations/{language} |  |
| [**get_listing_translation**](ShopListingTranslationApi.md#get_listing_translation) | **GET** /v3/application/shops/{shop_id}/listings/{listing_id}/translations/{language} |  |
| [**update_listing_translation**](ShopListingTranslationApi.md#update_listing_translation) | **PUT** /v3/application/shops/{shop_id}/listings/{listing_id}/translations/{language} |  |


## create_listing_translation

> <ListingTranslation> create_listing_translation(shop_id, listing_id, language, title, description, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Creates a ListingTranslation by listing_id and language

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

api_instance = EtsyApi::ShopListingTranslationApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
language = 'language_example' # String | The IETF language tag for the language of this translation. Ex: `de`, `en`, `es`, `fr`, `it`, `ja`, `nl`, `pl`, `pt`.
title = 'title_example' # String | The title of the Listing of this Translation.
description = 'description_example' # String | The description of the Listing of this Translation.
opts = {
  tags: ['inner_example'] # Array<String> | The tags of the Listing of this Translation.
}

begin
  
  result = api_instance.create_listing_translation(shop_id, listing_id, language, title, description, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingTranslationApi->create_listing_translation: #{e}"
end
```

#### Using the create_listing_translation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingTranslation>, Integer, Hash)> create_listing_translation_with_http_info(shop_id, listing_id, language, title, description, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_listing_translation_with_http_info(shop_id, listing_id, language, title, description, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingTranslation>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingTranslationApi->create_listing_translation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **language** | **String** | The IETF language tag for the language of this translation. Ex: &#x60;de&#x60;, &#x60;en&#x60;, &#x60;es&#x60;, &#x60;fr&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;nl&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;. |  |
| **title** | **String** | The title of the Listing of this Translation. |  |
| **description** | **String** | The description of the Listing of this Translation. |  |
| **tags** | [**Array&lt;String&gt;**](String.md) | The tags of the Listing of this Translation. | [optional] |

### Return type

[**ListingTranslation**](ListingTranslation.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_listing_translation

> <ListingTranslation> get_listing_translation(shop_id, listing_id, language)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Get a Translation for a Listing in the given language

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

api_instance = EtsyApi::ShopListingTranslationApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
language = 'language_example' # String | The IETF language tag for the language of this translation. Ex: `de`, `en`, `es`, `fr`, `it`, `ja`, `nl`, `pl`, `pt`.

begin
  
  result = api_instance.get_listing_translation(shop_id, listing_id, language)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingTranslationApi->get_listing_translation: #{e}"
end
```

#### Using the get_listing_translation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingTranslation>, Integer, Hash)> get_listing_translation_with_http_info(shop_id, listing_id, language)

```ruby
begin
  
  data, status_code, headers = api_instance.get_listing_translation_with_http_info(shop_id, listing_id, language)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingTranslation>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingTranslationApi->get_listing_translation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **language** | **String** | The IETF language tag for the language of this translation. Ex: &#x60;de&#x60;, &#x60;en&#x60;, &#x60;es&#x60;, &#x60;fr&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;nl&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;. |  |

### Return type

[**ListingTranslation**](ListingTranslation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_listing_translation

> <ListingTranslation> update_listing_translation(shop_id, listing_id, language, title, description, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Updates a ListingTranslation by listing_id and language

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

api_instance = EtsyApi::ShopListingTranslationApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
language = 'language_example' # String | The IETF language tag for the language of this translation. Ex: `de`, `en`, `es`, `fr`, `it`, `ja`, `nl`, `pl`, `pt`.
title = 'title_example' # String | The title of the Listing of this Translation.
description = 'description_example' # String | The description of the Listing of this Translation.
opts = {
  tags: ['inner_example'] # Array<String> | The tags of the Listing of this Translation.
}

begin
  
  result = api_instance.update_listing_translation(shop_id, listing_id, language, title, description, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingTranslationApi->update_listing_translation: #{e}"
end
```

#### Using the update_listing_translation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingTranslation>, Integer, Hash)> update_listing_translation_with_http_info(shop_id, listing_id, language, title, description, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_listing_translation_with_http_info(shop_id, listing_id, language, title, description, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingTranslation>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopListingTranslationApi->update_listing_translation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **language** | **String** | The IETF language tag for the language of this translation. Ex: &#x60;de&#x60;, &#x60;en&#x60;, &#x60;es&#x60;, &#x60;fr&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;nl&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;. |  |
| **title** | **String** | The title of the Listing of this Translation. |  |
| **description** | **String** | The description of the Listing of this Translation. |  |
| **tags** | [**Array&lt;String&gt;**](String.md) | The tags of the Listing of this Translation. | [optional] |

### Return type

[**ListingTranslation**](ListingTranslation.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

