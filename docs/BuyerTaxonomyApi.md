# EtsyApi::BuyerTaxonomyApi

All URIs are relative to *https://openapi.etsy.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_buyer_taxonomy_nodes**](BuyerTaxonomyApi.md#get_buyer_taxonomy_nodes) | **GET** /v3/application/buyer-taxonomy/nodes |  |
| [**get_properties_by_buyer_taxonomy_id**](BuyerTaxonomyApi.md#get_properties_by_buyer_taxonomy_id) | **GET** /v3/application/buyer-taxonomy/nodes/{taxonomy_id}/properties |  |


## get_buyer_taxonomy_nodes

> <BuyerTaxonomyNodes> get_buyer_taxonomy_nodes



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the full hierarchy tree of buyer taxonomy nodes.

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

api_instance = EtsyApi::BuyerTaxonomyApi.new

begin
  
  result = api_instance.get_buyer_taxonomy_nodes
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling BuyerTaxonomyApi->get_buyer_taxonomy_nodes: #{e}"
end
```

#### Using the get_buyer_taxonomy_nodes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerTaxonomyNodes>, Integer, Hash)> get_buyer_taxonomy_nodes_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_buyer_taxonomy_nodes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerTaxonomyNodes>
rescue EtsyApi::ApiError => e
  puts "Error when calling BuyerTaxonomyApi->get_buyer_taxonomy_nodes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BuyerTaxonomyNodes**](BuyerTaxonomyNodes.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_properties_by_buyer_taxonomy_id

> <BuyerTaxonomyNodeProperties> get_properties_by_buyer_taxonomy_id(taxonomy_id)



<div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a list of product properties, with applicable scales and values, supported for a specific buyer taxonomy ID.

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

api_instance = EtsyApi::BuyerTaxonomyApi.new
taxonomy_id = 56 # Integer | The unique numeric ID of an Etsy taxonomy node, which is a metadata category for listings organized into the seller taxonomy hierarchy tree. For example, the \"shoes\" taxonomy node (ID: 1429, level: 1) is higher in the hierarchy than \"girls' shoes\" (ID: 1440, level: 2). The taxonomy nodes assigned to a listing support access to specific standardized product scales and properties. For example, listings assigned the taxonomy nodes \"shoes\" or \"girls' shoes\" support access to the \"EU\" shoe size scale with its associated property names and IDs for EU shoe sizes, such as property `value_id`:\"1394\", and `name`:\"38\".

begin
  
  result = api_instance.get_properties_by_buyer_taxonomy_id(taxonomy_id)
  p result
rescue EtsyApi::ApiError => e
  puts "Error when calling BuyerTaxonomyApi->get_properties_by_buyer_taxonomy_id: #{e}"
end
```

#### Using the get_properties_by_buyer_taxonomy_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BuyerTaxonomyNodeProperties>, Integer, Hash)> get_properties_by_buyer_taxonomy_id_with_http_info(taxonomy_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_properties_by_buyer_taxonomy_id_with_http_info(taxonomy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BuyerTaxonomyNodeProperties>
rescue EtsyApi::ApiError => e
  puts "Error when calling BuyerTaxonomyApi->get_properties_by_buyer_taxonomy_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_id** | **Integer** | The unique numeric ID of an Etsy taxonomy node, which is a metadata category for listings organized into the seller taxonomy hierarchy tree. For example, the \&quot;shoes\&quot; taxonomy node (ID: 1429, level: 1) is higher in the hierarchy than \&quot;girls&#39; shoes\&quot; (ID: 1440, level: 2). The taxonomy nodes assigned to a listing support access to specific standardized product scales and properties. For example, listings assigned the taxonomy nodes \&quot;shoes\&quot; or \&quot;girls&#39; shoes\&quot; support access to the \&quot;EU\&quot; shoe size scale with its associated property names and IDs for EU shoe sizes, such as property &#x60;value_id&#x60;:\&quot;1394\&quot;, and &#x60;name&#x60;:\&quot;38\&quot;. |  |

### Return type

[**BuyerTaxonomyNodeProperties**](BuyerTaxonomyNodeProperties.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

