# EtsyApi::ShopReceiptShipmentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **receipt_shipping_id** | **Integer** | The unique numeric ID of a Shop Receipt Shipment record. | [optional] |
| **shipment_notification_timestamp** | **Integer** | The time at which Etsy notified the buyer of the shipment event, in epoch seconds. | [optional] |
| **carrier_name** | **String** | The name string for the carrier/company responsible for delivering the shipment. | [optional] |
| **tracking_code** | **String** | The tracking code string provided by the carrier/company for the shipment. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopReceiptShipmentsInner.new(
  receipt_shipping_id: null,
  shipment_notification_timestamp: null,
  carrier_name: null,
  tracking_code: null
)
```

