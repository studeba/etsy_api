# EtsyApi::ShopReceiptApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_receipt_shipment**](ShopReceiptApi.md#create_receipt_shipment) | **POST** /v3/application/shops/{shop_id}/receipts/{receipt_id}/tracking |  |
| [**get_shop_receipt**](ShopReceiptApi.md#get_shop_receipt) | **GET** /v3/application/shops/{shop_id}/receipts/{receipt_id} |  |
| [**get_shop_receipts**](ShopReceiptApi.md#get_shop_receipts) | **GET** /v3/application/shops/{shop_id}/receipts |  |
| [**update_shop_receipt**](ShopReceiptApi.md#update_shop_receipt) | **PUT** /v3/application/shops/{shop_id}/receipts/{receipt_id} |  |


## create_receipt_shipment

> <ShopReceipt> create_receipt_shipment(shop_id, receipt_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Submits tracking information for a Shop Receipt, which creates a Shop Receipt Shipment entry for the given receipt_id. Each time you successfully submit tracking info, Etsy sends a notification email to the buyer User. When send_bcc is true, Etsy sends shipping notifications to the seller as well. When tracking_code and carrier_name aren't sent, the receipt is marked as shipped only. If the carrier is not supported, you may use `other` as the carrier name so you can provide the tracking code. **NOTE** When shipping within the United States AND the order is over $10 _or_ when shipping to India, tracking code and carrier name ARE required. 

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

api_instance = EtsyApi::ShopReceiptApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
receipt_id = 56 # Integer | The receipt to submit tracking for.
opts = {
  tracking_code: 'tracking_code_example', # String | The tracking code for this receipt.
  carrier_name: 'carrier_name_example', # String | The carrier name for this receipt.
  send_bcc: true, # Boolean | If true, the shipping notification will be sent to the seller as well
  note_to_buyer: 'note_to_buyer_example' # String | Message to include in notification to the buyer.
}

begin
  
  result = api_instance.create_receipt_shipment(shop_id, receipt_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptApi->create_receipt_shipment: #{e}"
end
```

#### Using the create_receipt_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReceipt>, Integer, Hash)> create_receipt_shipment_with_http_info(shop_id, receipt_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_receipt_shipment_with_http_info(shop_id, receipt_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReceipt>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptApi->create_receipt_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **receipt_id** | **Integer** | The receipt to submit tracking for. |  |
| **tracking_code** | **String** | The tracking code for this receipt. | [optional] |
| **carrier_name** | **String** | The carrier name for this receipt. | [optional] |
| **send_bcc** | **Boolean** | If true, the shipping notification will be sent to the seller as well | [optional] |
| **note_to_buyer** | **String** | Message to include in notification to the buyer. | [optional] |

### Return type

[**ShopReceipt**](ShopReceipt.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_shop_receipt

> <ShopReceipt> get_shop_receipt(shop_id, receipt_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a receipt, identified by a receipt id, from an Etsy shop

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

api_instance = EtsyApi::ShopReceiptApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
receipt_id = 56 # Integer | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction.

begin
  
  result = api_instance.get_shop_receipt(shop_id, receipt_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptApi->get_shop_receipt: #{e}"
end
```

#### Using the get_shop_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReceipt>, Integer, Hash)> get_shop_receipt_with_http_info(shop_id, receipt_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_receipt_with_http_info(shop_id, receipt_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReceipt>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptApi->get_shop_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **receipt_id** | **Integer** | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction. |  |

### Return type

[**ShopReceipt**](ShopReceipt.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shop_receipts

> <ShopReceipts> get_shop_receipts(shop_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Requests the Shop Receipts from a specific Shop, unfiltered or filtered by receipt id range or offset, date, paid, and/or shipped purchases.

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

api_instance = EtsyApi::ShopReceiptApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
opts = {
  min_created: 56, # Integer | The earliest unix timestamp for when a record was created.
  max_created: 56, # Integer | The latest unix timestamp for when a record was created.
  min_last_modified: 56, # Integer | The earliest unix timestamp for when a record last changed.
  max_last_modified: 56, # Integer | The latest unix timestamp for when a record last changed.
  limit: 56, # Integer | The maximum number of results to return.
  offset: 56, # Integer | The number of records to skip before selecting the first result.
  sort_on: 'created', # String | The value to sort a search result of listings on.
  sort_order: 'asc', # String | The ascending(up) or descending(down) order to sort receipts by.
  was_paid: true, # Boolean | When `true`, returns receipts where the seller has recieved payment for the receipt. When `false`, returns receipts where payment has not been received.
  was_shipped: true, # Boolean | When `true`, returns receipts where the seller shipped the product(s) in this receipt. When `false`, returns receipts where shipment has not been set.
  was_delivered: true # Boolean | When `true`, returns receipts that have been marked as delivered. When `false`, returns receipts where shipment has not been marked as delivered.
}

begin
  
  result = api_instance.get_shop_receipts(shop_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptApi->get_shop_receipts: #{e}"
end
```

#### Using the get_shop_receipts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReceipts>, Integer, Hash)> get_shop_receipts_with_http_info(shop_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_shop_receipts_with_http_info(shop_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReceipts>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptApi->get_shop_receipts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **min_created** | **Integer** | The earliest unix timestamp for when a record was created. | [optional] |
| **max_created** | **Integer** | The latest unix timestamp for when a record was created. | [optional] |
| **min_last_modified** | **Integer** | The earliest unix timestamp for when a record last changed. | [optional] |
| **max_last_modified** | **Integer** | The latest unix timestamp for when a record last changed. | [optional] |
| **limit** | **Integer** | The maximum number of results to return. | [optional][default to 25] |
| **offset** | **Integer** | The number of records to skip before selecting the first result. | [optional][default to 0] |
| **sort_on** | **String** | The value to sort a search result of listings on. | [optional][default to &#39;created&#39;] |
| **sort_order** | **String** | The ascending(up) or descending(down) order to sort receipts by. | [optional][default to &#39;desc&#39;] |
| **was_paid** | **Boolean** | When &#x60;true&#x60;, returns receipts where the seller has recieved payment for the receipt. When &#x60;false&#x60;, returns receipts where payment has not been received. | [optional] |
| **was_shipped** | **Boolean** | When &#x60;true&#x60;, returns receipts where the seller shipped the product(s) in this receipt. When &#x60;false&#x60;, returns receipts where shipment has not been set. | [optional] |
| **was_delivered** | **Boolean** | When &#x60;true&#x60;, returns receipts that have been marked as delivered. When &#x60;false&#x60;, returns receipts where shipment has not been marked as delivered. | [optional] |

### Return type

[**ShopReceipts**](ShopReceipts.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_shop_receipt

> <ShopReceipt> update_shop_receipt(shop_id, receipt_id, opts)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Updates the status of a receipt, identified by a receipt id, from an Etsy shop

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

api_instance = EtsyApi::ShopReceiptApi.new
shop_id = 56 # Integer | The unique positive non-zero numeric ID for an Etsy Shop.
receipt_id = 56 # Integer | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction.
opts = {
  was_shipped: true, # Boolean | When `true`, returns receipts where the seller shipped the product(s) in this receipt. When `false`, returns receipts where shipment has not been set.
  was_paid: true # Boolean | When `true`, returns receipts where the seller has recieved payment for the receipt. When `false`, returns receipts where payment has not been received.
}

begin
  
  result = api_instance.update_shop_receipt(shop_id, receipt_id, opts)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptApi->update_shop_receipt: #{e}"
end
```

#### Using the update_shop_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShopReceipt>, Integer, Hash)> update_shop_receipt_with_http_info(shop_id, receipt_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_shop_receipt_with_http_info(shop_id, receipt_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShopReceipt>
rescue EtsyApi::ApiError => e
  puts "Error when calling ShopReceiptApi->update_shop_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. |  |
| **receipt_id** | **Integer** | The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction. |  |
| **was_shipped** | **Boolean** | When &#x60;true&#x60;, returns receipts where the seller shipped the product(s) in this receipt. When &#x60;false&#x60;, returns receipts where shipment has not been set. | [optional] |
| **was_paid** | **Boolean** | When &#x60;true&#x60;, returns receipts where the seller has recieved payment for the receipt. When &#x60;false&#x60;, returns receipts where payment has not been received. | [optional] |

### Return type

[**ShopReceipt**](ShopReceipt.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

