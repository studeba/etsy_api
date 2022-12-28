# EtsyApi::ModelSelf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The numeric ID of a user. This number is also a valid shop ID for the user\\&#39;s shop. | [optional] |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ModelSelf.new(
  user_id: null,
  shop_id: null
)
```

