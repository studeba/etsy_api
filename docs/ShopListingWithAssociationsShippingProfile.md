# EtsyApi::ShopListingWithAssociationsShippingProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipping_profile_id** | **Integer** | The numeric ID of the shipping profile. | [optional] |
| **title** | **String** | The name string of this shipping profile. | [optional] |
| **user_id** | **Integer** | The numeric ID for the [user](/documentation/reference#tag/User) who owns the shipping profile. | [optional] |
| **min_processing_days** | **Integer** | The minimum number of days for processing the listing. | [optional] |
| **max_processing_days** | **Integer** | The maximum number of days for processing the listing. | [optional] |
| **processing_days_display_label** | **String** | Translated display label string for processing days. | [optional] |
| **origin_country_iso** | **String** | The ISO code of the country from which the listing ships. | [optional] |
| **is_deleted** | **Boolean** | When true, someone deleted this shipping profile. | [optional] |
| **shipping_profile_destinations** | [**Array&lt;ShopShippingProfileShippingProfileDestinationsInner&gt;**](ShopShippingProfileShippingProfileDestinationsInner.md) | A list of [shipping profile destinations](/documentation/reference/#operation/createShopShippingProfileDestination) available for this shipping profile. | [optional] |
| **shipping_profile_upgrades** | [**Array&lt;ShopShippingProfileShippingProfileUpgradesInner&gt;**](ShopShippingProfileShippingProfileUpgradesInner.md) | A list of [shipping profile upgrades](/documentation/reference/#operation/createShopShippingProfileUpgrade) available for this shipping profile. | [optional] |
| **origin_postal_code** | **String** | The postal code string (not necessarily a number) for the location from which the listing ships. Required if the &#x60;origin_country_iso&#x60; is &#x60;US&#x60; or &#x60;CA&#x60;. | [optional] |
| **profile_type** | **String** |  | [optional] |
| **domestic_handling_fee** | **Float** | The domestic handling fee added to buyer&#39;s shipping total - only available for calculated shipping profiles. | [optional][default to 0] |
| **international_handling_fee** | **Float** | The international handling fee added to buyer&#39;s shipping total - only available for calculated shipping profiles. | [optional][default to 0] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopListingWithAssociationsShippingProfile.new(
  shipping_profile_id: null,
  title: null,
  user_id: null,
  min_processing_days: null,
  max_processing_days: null,
  processing_days_display_label: null,
  origin_country_iso: null,
  is_deleted: null,
  shipping_profile_destinations: null,
  shipping_profile_upgrades: null,
  origin_postal_code: null,
  profile_type: null,
  domestic_handling_fee: null,
  international_handling_fee: null
)
```

