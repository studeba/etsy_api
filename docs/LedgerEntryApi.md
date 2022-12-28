# EtsyApi::LedgerEntryApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_shop_payment_account_ledger_entries**](LedgerEntryApi.md#get_shop_payment_account_ledger_entries) | **GET** /v3/application/shops/{shop_id}/payment-account/ledger-entries |  |
| [**get_shop_payment_account_ledger_entry**](LedgerEntryApi.md#get_shop_payment_account_ledger_entry) | **GET** /v3/application/shops/{shop_id}/payment-account/ledger-entries/{ledger_entry_id} |  |


## get_shop_payment_account_ledger_entries

> <PaymentAccountLedgerEntries> get_shop_payment_account_ledger_entries(shop_id, min_created, max_created, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Get a Shop Payment Account Ledger's Entries

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

api_instance = EtsyApi::LedgerEntryApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
min_created = 56 # Integer | The earliest unix timestamp for when a record was created.
max_created = 56 # Integer | The latest unix timestamp for when a record was created.
opts = {
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56 # Integer | The number of records to skip before selecting the first result.
}

begin
  
  result = api_instance.get_shop_payment_account_ledger_entries(shop_id, min_created, max_created, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling LedgerEntryApi->get_shop_payment_account_ledger_entries: #{e}"
end
```

#### Using the get_shop_payment_account_ledger_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountLedgerEntries>, Integer, Hash)> get_shop_payment_account_ledger_entries_with_http_info(shop_id, min_created, max_created, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_payment_account_ledger_entries_with_http_info(shop_id, min_created, max_created, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentAccountLedgerEntries>
rescue EtsyApi::ApiError => e
  puts "Error when calling LedgerEntryApi->get_shop_payment_account_ledger_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **min_created** | **Integer** | The earliest unix timestamp for when a record was created. |  |
| **max_created** | **Integer** | The latest unix timestamp for when a record was created. |  |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |

### Return type

[**PaymentAccountLedgerEntries**](PaymentAccountLedgerEntries.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_payment_account_ledger_entry

> <PaymentAccountLedgerEntry> get_shop_payment_account_ledger_entry(shop_id, ledger_entry_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Get a single Shop Payment Account Ledger's Entry

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

api_instance = EtsyApi::LedgerEntryApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
ledger_entry_id = 56 # Integer | The unique ID of the shop owner ledger entry.

begin
  
  result = api_instance.get_shop_payment_account_ledger_entry(shop_id, ledger_entry_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling LedgerEntryApi->get_shop_payment_account_ledger_entry: #{e}"
end
```

#### Using the get_shop_payment_account_ledger_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountLedgerEntry>, Integer, Hash)> get_shop_payment_account_ledger_entry_with_http_info(shop_id, ledger_entry_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_payment_account_ledger_entry_with_http_info(shop_id, ledger_entry_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentAccountLedgerEntry>
rescue EtsyApi::ApiError => e
  puts "Error when calling LedgerEntryApi->get_shop_payment_account_ledger_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **ledger_entry_id** | **Integer** | The unique ID of the shop owner ledger entry. |  |

### Return type

[**PaymentAccountLedgerEntry**](PaymentAccountLedgerEntry.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

