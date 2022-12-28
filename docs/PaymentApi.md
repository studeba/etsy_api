# EtsyApi::PaymentApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payment_account_ledger_entry_payments**](PaymentApi.md#get_payment_account_ledger_entry_payments) | **GET** /v3/application/shops/{shop_id}/payment-account/ledger-entries/payments |  |
| [**get_payments**](PaymentApi.md#get_payments) | **GET** /v3/application/shops/{shop_id}/payments |  |
| [**get_shop_payment_by_receipt_id**](PaymentApi.md#get_shop_payment_by_receipt_id) | **GET** /v3/application/shops/{shop_id}/receipts/{receipt_id}/payments |  |


## get_payment_account_ledger_entry_payments

> <Payments> get_payment_account_ledger_entry_payments(shop_id, ledger_entry_ids)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Get a Payment from a PaymentAccount Ledger Entry ID, if applicable

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

api_instance = EtsyApi::PaymentApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
ledger_entry_ids = [37] # Array<Integer> | 

begin
  
  result = api_instance.get_payment_account_ledger_entry_payments(shop_id, ledger_entry_ids)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling PaymentApi->get_payment_account_ledger_entry_payments: #{e}"
end
```

#### Using the get_payment_account_ledger_entry_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payments>, Integer, Hash)> get_payment_account_ledger_entry_payments_with_http_info(shop_id, ledger_entry_ids)

```ruby
begin
  
  data, status_code, headers = api_instance.get_payment_account_ledger_entry_payments_with_http_info(shop_id, ledger_entry_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payments>
rescue EtsyApi::ApiError => e
  puts "Error when calling PaymentApi->get_payment_account_ledger_entry_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **ledger_entry_ids** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |

### Return type

[**Payments**](Payments.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payments

> <Payments> get_payments(shop_id, payment_ids)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a list of payments from a shop identified by `shop_id`. You can also filter results using a list of payment IDs.

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

api_instance = EtsyApi::PaymentApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
payment_ids = [37] # Array<Integer> | A comma-separated array of Payment IDs numbers.

begin
  
  result = api_instance.get_payments(shop_id, payment_ids)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling PaymentApi->get_payments: #{e}"
end
```

#### Using the get_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payments>, Integer, Hash)> get_payments_with_http_info(shop_id, payment_ids)

```ruby
begin
  
  data, status_code, headers = api_instance.get_payments_with_http_info(shop_id, payment_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payments>
rescue EtsyApi::ApiError => e
  puts "Error when calling PaymentApi->get_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **payment_ids** | [**Array&lt;Integer&gt;**](Integer.md) | A comma-separated array of Payment IDs numbers. |  |

### Return type

[**Payments**](Payments.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_payment_by_receipt_id

> <Payments> get_shop_payment_by_receipt_id(shop_id, receipt_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a payment from a specific receipt, identified by `receipt_id`, from a specific shop, identified by `shop_id`

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

api_instance = EtsyApi::PaymentApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
receipt_id = 56 # Integer | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction.

begin
  
  result = api_instance.get_shop_payment_by_receipt_id(shop_id, receipt_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling PaymentApi->get_shop_payment_by_receipt_id: #{e}"
end
```

#### Using the get_shop_payment_by_receipt_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payments>, Integer, Hash)> get_shop_payment_by_receipt_id_with_http_info(shop_id, receipt_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_payment_by_receipt_id_with_http_info(shop_id, receipt_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payments>
rescue EtsyApi::ApiError => e
  puts "Error when calling PaymentApi->get_shop_payment_by_receipt_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **receipt_id** | **Integer** | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction. |  |

### Return type

[**Payments**](Payments.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

