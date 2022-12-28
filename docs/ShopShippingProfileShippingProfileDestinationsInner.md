# EtsyApi::ShopShippingProfileShippingProfileDestinationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipping_profile_destination_id** | **Integer** | The numeric ID of the shipping profile destination in the [shipping profile](/documentation/reference#tag/Shop-ShippingProfile) associated with the listing. | [optional] |
| **shipping_profile_id** | **Integer** | The numeric ID of the shipping profile. | [optional] |
| **origin_country_iso** | **String** | The ISO code of the country from which the listing ships. | [optional] |
| **destination_country_iso** | **String** | The ISO code of the country to which the listing ships. If null, request sets destination to destination_region. Required if destination_region is null or not provided. | [optional] |
| **destination_region** | **String** | The code of the region to which the listing ships. A region represents a set of countries. Supported regions are Europe Union and Non-Europe Union (countries in Europe not in EU). If \\&#x60;none\\&#x60;, request sets destination to destination_country_iso. Required if destination_country_iso is null or not provided. | [optional] |
| **primary_cost** | [**ShopShippingProfileDestinationPrimaryCost**](ShopShippingProfileDestinationPrimaryCost.md) |  | [optional] |
| **secondary_cost** | [**ShopShippingProfileDestinationSecondaryCost**](ShopShippingProfileDestinationSecondaryCost.md) |  | [optional] |
| **shipping_carrier_id** | **Integer** | The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with &#x60;mail_class&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional] |
| **mail_class** | **String** | The unique ID string of a shipping carrier&#39;s mail class, which is used to calculate an estimated delivery date. **Required with &#x60;shipping_carrier_id&#x60;** if &#x60;min_delivery_days&#x60; and &#x60;max_delivery_days&#x60; are null. | [optional] |
| **min_delivery_days** | **Integer** | The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;max_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |
| **max_delivery_days** | **Integer** | The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with &#x60;min_delivery_days&#x60;** if &#x60;mail_class&#x60; is null. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopShippingProfileShippingProfileDestinationsInner.new(
  shipping_profile_destination_id: null,
  shipping_profile_id: null,
  origin_country_iso: null,
  destination_country_iso: null,
  destination_region: null,
  primary_cost: null,
  secondary_cost: null,
  shipping_carrier_id: null,
  mail_class: null,
  min_delivery_days: null,
  max_delivery_days: null
)
```

