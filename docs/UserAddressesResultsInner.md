# EtsyApi::UserAddressesResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_address_id** | **Integer** | The numeric ID of the user&#39;s address. | [optional] |
| **user_id** | **Integer** | The user&#39;s numeric ID. | [optional] |
| **name** | **String** | The user&#39;s name for this address. | [optional] |
| **first_line** | **String** | The first line of the user&#39;s address. | [optional] |
| **second_line** | **String** | The second line of the user&#39;s address. | [optional] |
| **city** | **String** | The city field of the user&#39;s address. | [optional] |
| **state** | **String** | The state field of the user&#39;s address. | [optional] |
| **zip** | **String** | The zip code field of the user&#39;s address. | [optional] |
| **iso_country_code** | **String** | The ISO code of the country in this address. | [optional] |
| **country_name** | **String** | The name of the user&#39;s country. | [optional] |
| **is_default_shipping_address** | **Boolean** | Is this the user&#39;s default shipping address. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::UserAddressesResultsInner.new(
  user_address_id: null,
  user_id: null,
  name: null,
  first_line: null,
  second_line: null,
  city: null,
  state: null,
  zip: null,
  iso_country_code: null,
  country_name: null,
  is_default_shipping_address: null
)
```

