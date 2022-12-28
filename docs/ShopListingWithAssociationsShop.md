# EtsyApi::ShopListingWithAssociationsShop

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. | [optional] |
| **user_id** | **Integer** | The numeric user ID of the [user](/documentation/reference#tag/User) who owns this shop. | [optional] |
| **shop_name** | **String** | The shop&#39;s name string. | [optional] |
| **create_date** | **Integer** | The date and time this shop was created, in epoch seconds. | [optional] |
| **created_timestamp** | **Integer** | The date and time this shop was created, in epoch seconds. | [optional] |
| **title** | **String** | A brief heading string for the shop\\&#39;s main page. | [optional] |
| **announcement** | **String** | An announcement string to buyers that displays on the shop&#39;s homepage. | [optional] |
| **currency_code** | **String** | The ISO (alphabetic) code for the shop&#39;s currency. The shop displays all prices in this currency by default. | [optional] |
| **is_vacation** | **Boolean** | When true, this shop is not accepting purchases. | [optional] |
| **vacation_message** | **String** | The shop&#39;s message string displayed when &#x60;is_vacation&#x60; is true. | [optional] |
| **sale_message** | **String** | A message string sent to users who complete a purchase from this shop. | [optional] |
| **digital_sale_message** | **String** | A message string sent to users who purchase a digital item from this shop. | [optional] |
| **update_date** | **Integer** | The date and time of the last update to the shop, in epoch seconds. | [optional] |
| **updated_timestamp** | **Integer** | The date and time of the last update to the shop, in epoch seconds. | [optional] |
| **listing_active_count** | **Integer** | The number of active listings in the shop. | [optional] |
| **digital_listing_count** | **Integer** | The number of digital listings in the shop. | [optional] |
| **login_name** | **String** | The shop owner\\&#39;s login name string. | [optional] |
| **accepts_custom_requests** | **Boolean** | When true, the shop accepts customization requests. | [optional] |
| **policy_welcome** | **String** | The shop&#39;s policy welcome string (may be blank). | [optional] |
| **policy_payment** | **String** | The shop&#39;s payment policy string (may be blank). | [optional] |
| **policy_shipping** | **String** | The shop&#39;s shipping policy string (may be blank). | [optional] |
| **policy_refunds** | **String** | The shop&#39;s refund policy string (may be blank). | [optional] |
| **policy_additional** | **String** | The shop&#39;s additional policies string (may be blank). | [optional] |
| **policy_seller_info** | **String** | The shop&#39;s seller information string (may be blank). | [optional] |
| **policy_update_date** | **Integer** | The date and time of the last update to the shop&#39;s policies, in epoch seconds. | [optional] |
| **policy_has_private_receipt_info** | **Boolean** | When true, EU receipts display private info. | [optional] |
| **has_unstructured_policies** | **Boolean** | When true, the shop displays additional unstructured policy fields. | [optional] |
| **policy_privacy** | **String** | The shop&#39;s privacy policy string (may be blank). | [optional] |
| **vacation_autoreply** | **String** | The shop&#39;s automatic reply string displayed in new conversations when &#x60;is_vacation&#x60; is true. | [optional] |
| **url** | **String** | The URL string for this shop. | [optional] |
| **image_url_760x100** | **String** | The URL string for this shop&#39;s banner image. | [optional] |
| **num_favorers** | **Integer** | The number of users who marked this shop a favorite. | [optional] |
| **languages** | **Array&lt;String&gt;** | A list of language strings for the shop&#39;s enrolled languages. | [optional] |
| **icon_url_fullxfull** | **String** | The URL string for this shop&#39;s icon image. | [optional] |
| **is_using_structured_policies** | **Boolean** | When true, the shop accepted using structured policies. | [optional] |
| **has_onboarded_structured_policies** | **Boolean** | When true, the shop accepted OR declined after viewing structured policies onboarding. | [optional] |
| **include_dispute_form_link** | **Boolean** | When true, this shop\\&#39;s policies include a link to an EU online dispute form. | [optional] |
| **is_direct_checkout_onboarded** | **Boolean** | (**DEPRECATED: Replaced by _is_etsy_payments_onboarded_.) When true, the shop has onboarded onto Etsy Payments. | [optional] |
| **is_etsy_payments_onboarded** | **Boolean** | When true, the shop has onboarded onto Etsy Payments. | [optional] |
| **is_calculated_eligible** | **Boolean** | When true, the shop is eligible for calculated shipping profiles. (Only available in the US and Canada) | [optional] |
| **is_opted_in_to_buyer_promise** | **Boolean** | When true, the shop opted in to buyer promise. | [optional] |
| **is_shop_us_based** | **Boolean** | When true, the shop is based in the US. | [optional] |
| **transaction_sold_count** | **Integer** | The total number of sales ([transactions](/documentation/reference#tag/Shop-Receipt-Transactions)) for this shop. | [optional] |
| **shipping_from_country_iso** | **String** | The country iso the shop is shipping from. | [optional] |
| **shop_location_country_iso** | **String** | The country iso where the shop is located. | [optional] |
| **review_count** | **Integer** | Number of reviews of shop listings in the past year. | [optional] |
| **review_average** | **Float** | Average rating based on reviews of shop listings in the past year. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopListingWithAssociationsShop.new(
  shop_id: null,
  user_id: null,
  shop_name: null,
  create_date: null,
  created_timestamp: null,
  title: null,
  announcement: null,
  currency_code: null,
  is_vacation: null,
  vacation_message: null,
  sale_message: null,
  digital_sale_message: null,
  update_date: null,
  updated_timestamp: null,
  listing_active_count: null,
  digital_listing_count: null,
  login_name: null,
  accepts_custom_requests: null,
  policy_welcome: null,
  policy_payment: null,
  policy_shipping: null,
  policy_refunds: null,
  policy_additional: null,
  policy_seller_info: null,
  policy_update_date: null,
  policy_has_private_receipt_info: null,
  has_unstructured_policies: null,
  policy_privacy: null,
  vacation_autoreply: null,
  url: null,
  image_url_760x100: null,
  num_favorers: null,
  languages: null,
  icon_url_fullxfull: null,
  is_using_structured_policies: null,
  has_onboarded_structured_policies: null,
  include_dispute_form_link: null,
  is_direct_checkout_onboarded: null,
  is_etsy_payments_onboarded: null,
  is_calculated_eligible: null,
  is_opted_in_to_buyer_promise: null,
  is_shop_us_based: null,
  transaction_sold_count: null,
  shipping_from_country_iso: null,
  shop_location_country_iso: null,
  review_count: null,
  review_average: null
)
```

