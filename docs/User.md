# EtsyApi::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The numeric ID of a user. This number is also a valid shop ID for the user\\&#39;s shop. | [optional] |
| **primary_email** | **String** | An email address string for the user\\&#39;s primary email address. | [optional] |
| **first_name** | **String** | The user\\&#39;s first name. | [optional] |
| **last_name** | **String** | The user\\&#39;s last name. | [optional] |
| **image_url_75x75** | **String** | The user\\&#39;s avatar URL. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::User.new(
  user_id: null,
  primary_email: null,
  first_name: null,
  last_name: null,
  image_url_75x75: null
)
```

