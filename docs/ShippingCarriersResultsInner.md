# EtsyApi::ShippingCarriersResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipping_carrier_id** | **Integer** | The numeric ID of this shipping carrier. | [optional] |
| **name** | **String** | The name of this shipping carrier. | [optional] |
| **domestic_classes** | [**Array&lt;ShippingCarrierDomesticClassesInner&gt;**](ShippingCarrierDomesticClassesInner.md) | Set of domestic mail classes of this shipping carrier. | [optional] |
| **international_classes** | [**Array&lt;ShippingCarrierInternationalClassesInner&gt;**](ShippingCarrierInternationalClassesInner.md) | Set of international mail classes of this shipping carrier. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShippingCarriersResultsInner.new(
  shipping_carrier_id: null,
  name: null,
  domestic_classes: null,
  international_classes: null
)
```

