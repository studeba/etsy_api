# EtsyApi::ShopReceiptTransactionsApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_shop_receipt_transaction**](ShopReceiptTransactionsApi.md#get_shop_receipt_transaction) | **GET** /v3/application/shops/{shop_id}/transactions/{transaction_id} |  |
| [**get_shop_receipt_transactions_by_listing**](ShopReceiptTransactionsApi.md#get_shop_receipt_transactions_by_listing) | **GET** /v3/application/shops/{shop_id}/listings/{listing_id}/transactions |  |
| [**get_shop_receipt_transactions_by_receipt**](ShopReceiptTransactionsApi.md#get_shop_receipt_transactions_by_receipt) | **GET** /v3/application/shops/{shop_id}/receipts/{receipt_id}/transactions |  |
| [**get_shop_receipt_transactions_by_shop**](ShopReceiptTransactionsApi.md#get_shop_receipt_transactions_by_shop) | **GET** /v3/application/shops/{shop_id}/transactions |  |


## get_shop_receipt_transaction

> <ShopReceiptTransaction> get_shop_receipt_transaction(shop_id, transaction_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a transaction by transaction ID.

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

api_instance = EtsyApi::ShopReceiptTransactionsApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
transaction_id = 56 # Integer | The unique numeric ID for a transaction.

begin
  
  result = api_instance.get_shop_receipt_transaction(shop_id, transaction_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptTransactionsApi->get_shop_receipt_transaction: #{e}"
end
```

#### Using the get_shop_receipt_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReceiptTransaction>, Integer, Hash)> get_shop_receipt_transaction_with_http_info(shop_id, transaction_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_receipt_transaction_with_http_info(shop_id, transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReceiptTransaction>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptTransactionsApi->get_shop_receipt_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **transaction_id** | **Integer** | The unique numeric ID for a transaction. |  |

### Return type

[**ShopReceiptTransaction**](ShopReceiptTransaction.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_receipt_transactions_by_listing

> <ShopReceiptTransactions> get_shop_receipt_transactions_by_listing(shop_id, listing_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the list of transactions associated with a listing.

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

api_instance = EtsyApi::ShopReceiptTransactionsApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
listing_id = 56 # Integer | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56 # Integer | The number of records to skip before selecting the first result.
}

begin
  
  result = api_instance.get_shop_receipt_transactions_by_listing(shop_id, listing_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptTransactionsApi->get_shop_receipt_transactions_by_listing: #{e}"
end
```

#### Using the get_shop_receipt_transactions_by_listing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReceiptTransactions>, Integer, Hash)> get_shop_receipt_transactions_by_listing_with_http_info(shop_id, listing_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_receipt_transactions_by_listing_with_http_info(shop_id, listing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReceiptTransactions>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptTransactionsApi->get_shop_receipt_transactions_by_listing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |

### Return type

[**ShopReceiptTransactions**](ShopReceiptTransactions.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_receipt_transactions_by_receipt

> <ShopReceiptTransactions> get_shop_receipt_transactions_by_receipt(shop_id, receipt_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the list of transactions associated with a specific receipt.

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

api_instance = EtsyApi::ShopReceiptTransactionsApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
receipt_id = 56 # Integer | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction.

begin
  
  result = api_instance.get_shop_receipt_transactions_by_receipt(shop_id, receipt_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptTransactionsApi->get_shop_receipt_transactions_by_receipt: #{e}"
end
```

#### Using the get_shop_receipt_transactions_by_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReceiptTransactions>, Integer, Hash)> get_shop_receipt_transactions_by_receipt_with_http_info(shop_id, receipt_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_receipt_transactions_by_receipt_with_http_info(shop_id, receipt_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReceiptTransactions>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptTransactionsApi->get_shop_receipt_transactions_by_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **receipt_id** | **Integer** | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction. |  |

### Return type

[**ShopReceiptTransactions**](ShopReceiptTransactions.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_receipt_transactions_by_shop

> <ShopReceiptTransactions> get_shop_receipt_transactions_by_shop(shop_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the list of transactions associated with a shop.

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

api_instance = EtsyApi::ShopReceiptTransactionsApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56 # Integer | The number of records to skip before selecting the first result.
}

begin
  
  result = api_instance.get_shop_receipt_transactions_by_shop(shop_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptTransactionsApi->get_shop_receipt_transactions_by_shop: #{e}"
end
```

#### Using the get_shop_receipt_transactions_by_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReceiptTransactions>, Integer, Hash)> get_shop_receipt_transactions_by_shop_with_http_info(shop_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_receipt_transactions_by_shop_with_http_info(shop_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReceiptTransactions>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptTransactionsApi->get_shop_receipt_transactions_by_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |

### Return type

[**ShopReceiptTransactions**](ShopReceiptTransactions.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

