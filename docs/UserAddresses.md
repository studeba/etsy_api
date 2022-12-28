# EtsyApi::UserAddresses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of UserAddress records being returned. | [optional] |
| **results** | [**Array&lt;UserAddressesResultsInner&gt;**](UserAddressesResultsInner.md) | An array of UserAddress resources. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::UserAddresses.new(
  count: null,
  results: null
)
```

