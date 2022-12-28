# EtsyApi::ShopListingWithAssociations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_id** | **Integer** | The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction. | [optional] |
| **user_id** | **Integer** | The numeric ID for the [user](/documentation/reference#tag/User) posting the listing. | [optional] |
| **shop_id** | **Integer** | The unique positive non-zero numeric ID for an Etsy Shop. | [optional] |
| **title** | **String** | The listing&#39;s title string. When creating or updating a listing, valid title strings contain only letters, numbers, punctuation marks, mathematical symbols, whitespace characters, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{P}\\\\p{Sm}\\\\p{Zs}™©®]/u) You can only use the %, :, &amp; and + characters once each. | [optional] |
| **description** | **String** | A description string of the product for sale in the listing. | [optional] |
| **state** | **String** | When _updating_ a listing, this value can be either &#x60;active&#x60; or &#x60;inactive&#x60;. Note: Setting a &#x60;draft&#x60; listing to &#x60;active&#x60; will also publish the listing on etsy.com. Setting a &#x60;sold_out&#x60; listing to active will update the quantity to 1 and renew the listing on etsy.com. | [optional] |
| **creation_timestamp** | **Integer** | The listing\\&#39;s creation time, in epoch seconds. | [optional] |
| **created_timestamp** | **Integer** | The listing\\&#39;s creation time, in epoch seconds. | [optional] |
| **ending_timestamp** | **Integer** | The listing\\&#39;s expiration time, in epoch seconds. | [optional] |
| **original_creation_timestamp** | **Integer** | The listing\\&#39;s creation time, in epoch seconds. | [optional] |
| **last_modified_timestamp** | **Integer** | The time of the last update to the listing, in epoch seconds. | [optional] |
| **updated_timestamp** | **Integer** | The time of the last update to the listing, in epoch seconds. | [optional] |
| **state_timestamp** | **Integer** | The date and time of the last state change of this listing. | [optional] |
| **quantity** | **Integer** | The positive non-zero number of products available for purchase in the listing. Note: The listing quantity is the sum of available offering quantities. You can request the quantities for individual offerings from the ListingInventory resource using the [getListingInventory](/documentation/reference#operation/getListingInventory) endpoint. | [optional] |
| **shop_section_id** | **Integer** | The numeric ID of a section in a specific Etsy shop. | [optional] |
| **featured_rank** | **Integer** | The positive non-zero numeric position in the featured listings of the shop, with rank 1 listings appearing in the left-most position in featured listing on a shop’s home page. | [optional] |
| **url** | **String** | The full URL to the listing&#39;s page on Etsy. | [optional] |
| **num_favorers** | **Integer** | The number of users who marked this Listing a favorite. | [optional] |
| **non_taxable** | **Boolean** | When true, applicable [shop](/documentation/reference#tag/Shop) tax rates do not apply to this listing at checkout. | [optional] |
| **is_taxable** | **Boolean** | When true, applicable [shop](/documentation/reference#tag/Shop) tax rates apply to this listing at checkout. | [optional] |
| **is_customizable** | **Boolean** | When true, a buyer may contact the seller for a customized order. The default value is true when a shop accepts custom orders. Does not apply to shops that do not accept custom orders. | [optional] |
| **is_personalizable** | **Boolean** | When true, this listing is personalizable. The default value is null. | [optional] |
| **personalization_is_required** | **Boolean** | When true, this listing requires personalization. The default value is null. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **personalization_char_count_max** | **Integer** | This is an integer value representing the maximum length for the personalization message entered by the buyer. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **personalization_instructions** | **String** | When true, this listing requires personalization. The default value is null. Will only change if is_personalizable is &#39;true&#39;. | [optional] |
| **listing_type** | **String** | An enumerated type string that indicates whether the listing is physical or a digital download. | [optional] |
| **tags** | **Array&lt;String&gt;** | A comma-separated list of tag strings for the listing. When creating or updating a listing, valid tag strings contain only letters, numbers, whitespace characters, -, &#39;, ™, ©, and ®. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}\\\\-&#39;™©®]/u) Default value is null. | [optional] |
| **materials** | **Array&lt;String&gt;** | A list of material strings for materials used in the product. Valid materials strings contain only letters, numbers, and whitespace characters. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}]/u) Default value is null. | [optional] |
| **shipping_profile_id** | **Integer** | The numeric ID of the [shipping profile](/documentation/reference#operation/getShopShippingProfile) associated with the listing. Required when listing type is &#x60;physical&#x60;. | [optional] |
| **return_policy_id** | **Integer** | The numeric ID of the Return Policy. | [optional] |
| **processing_min** | **Integer** | The minimum number of days required to process this listing. Default value is null. | [optional] |
| **processing_max** | **Integer** | The maximum number of days required to process this listing. Default value is null. | [optional] |
| **who_made** | **String** | An enumerated string indicating who made the product. Helps buyers locate the listing under the Handmade heading. Requires &#39;is_supply&#39; and &#39;when_made&#39;. | [optional] |
| **when_made** | **String** | An enumerated string for the era in which the maker made the product in this listing. Helps buyers locate the listing under the Vintage heading. Requires &#39;is_supply&#39; and &#39;who_made&#39;. | [optional] |
| **is_supply** | **Boolean** | When true, tags the listing as a supply product, else indicates that it&#39;s a finished product. Helps buyers locate the listing under the Supplies heading. Requires &#39;who_made&#39; and &#39;when_made&#39;. | [optional] |
| **item_weight** | **Float** | The numeric weight of the product measured in units set in \\&#39;item_weight_unit\\&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_weight_unit** | **String** | A string defining the units used to measure the weight of the product. Default value is null. | [optional] |
| **item_length** | **Float** | The numeric length of the product measured in units set in \\&#39;item_dimensions_unit\\&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_width** | **Float** | The numeric width of the product measured in units set in \\&#39;item_dimensions_unit\\&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_height** | **Float** | The numeric length of the product measured in units set in \\&#39;item_dimensions_unit\\&#39;. Default value is null. If set, the value must be greater than 0. | [optional] |
| **item_dimensions_unit** | **String** | A string defining the units used to measure the dimensions of the product. Default value is null. | [optional] |
| **is_private** | **Boolean** | When true, this is a private listing intended for a specific buyer and hidden from shop view. | [optional] |
| **style** | **Array&lt;String&gt;** | An array of style strings for this listing, each of which is free-form text string such as \\\&quot;Formal\\\&quot;, or \\\&quot;Steampunk\\\&quot;. When creating or updating a listing, the listing may have up to two styles. Valid style strings contain only letters, numbers, and whitespace characters. (regex: /[^\\\\p{L}\\\\p{Nd}\\\\p{Zs}]/u) Default value is null. | [optional] |
| **file_data** | **String** | A string describing the files attached to a digital listing. | [optional] |
| **has_variations** | **Boolean** | When true, the listing has variations. | [optional] |
| **should_auto_renew** | **Boolean** | When true, renews a listing for four months upon expiration. | [optional] |
| **language** | **String** | The IETF language tag for the default language of the listing. Ex: &#x60;de&#x60;, &#x60;en&#x60;, &#x60;es&#x60;, &#x60;fr&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;nl&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;ru&#x60;. | [optional] |
| **price** | [**ShopListingPrice**](ShopListingPrice.md) |  | [optional] |
| **taxonomy_id** | **Integer** | The numerical taxonomy ID of the listing. See [SellerTaxonomy](/documentation/reference#tag/SellerTaxonomy) and [BuyerTaxonomy](/documentation/reference#tag/BuyerTaxonomy) for more information. | [optional] |
| **shipping_profile** | [**ShopListingWithAssociationsShippingProfile**](ShopListingWithAssociationsShippingProfile.md) |  | [optional] |
| **user** | [**ShopListingWithAssociationsUser**](ShopListingWithAssociationsUser.md) |  | [optional] |
| **shop** | [**ShopListingWithAssociationsShop**](ShopListingWithAssociationsShop.md) |  | [optional] |
| **images** | [**Array&lt;ShopListingWithAssociationsImagesInner&gt;**](ShopListingWithAssociationsImagesInner.md) | Represents a list of listing image resources, each of which contains the reference URLs and metadata for an image | [optional] |
| **videos** | [**Array&lt;ShopListingWithAssociationsVideosInner&gt;**](ShopListingWithAssociationsVideosInner.md) | The single video associated with a listing. | [optional] |
| **inventory** | [**ShopListingWithAssociationsInventory**](ShopListingWithAssociationsInventory.md) |  | [optional] |
| **production_partners** | [**Array&lt;ShopListingWithAssociationsProductionPartnersInner&gt;**](ShopListingWithAssociationsProductionPartnersInner.md) | Represents a list of production partners for a shop. | [optional] |
| **skus** | **Array&lt;String&gt;** | A list of SKU strings for the listing. SKUs will only appear if the requesting user owns the shop and a valid matching OAuth 2 token is provided. When requested without the token it will be an empty array. | [optional] |
| **translations** | [**Array&lt;ShopListingWithAssociationsTranslationsInner&gt;**](ShopListingWithAssociationsTranslationsInner.md) | An array of translations for the listing. Default value is an empty array. | [optional] |
| **views** | **Integer** | The number of times the listing has been viewed. This value is tabulated once per day and **only for active listings**, so the value is not real-time. If &#x60;0&#x60;, the listing has either not been viewed, not yet tabulated, was not active during the last tabulation or there was an error fetching the value. If a value is expected, call &#x60;getListing&#x60; to confirm the value. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::ShopListingWithAssociations.new(
  listing_id: null,
  user_id: null,
  shop_id: null,
  title: null,
  description: null,
  state: null,
  creation_timestamp: null,
  created_timestamp: null,
  ending_timestamp: null,
  original_creation_timestamp: null,
  last_modified_timestamp: null,
  updated_timestamp: null,
  state_timestamp: null,
  quantity: null,
  shop_section_id: null,
  featured_rank: null,
  url: null,
  num_favorers: null,
  non_taxable: null,
  is_taxable: null,
  is_customizable: null,
  is_personalizable: null,
  personalization_is_required: null,
  personalization_char_count_max: null,
  personalization_instructions: null,
  listing_type: null,
  tags: null,
  materials: null,
  shipping_profile_id: null,
  return_policy_id: null,
  processing_min: null,
  processing_max: null,
  who_made: null,
  when_made: null,
  is_supply: null,
  item_weight: null,
  item_weight_unit: null,
  item_length: null,
  item_width: null,
  item_height: null,
  item_dimensions_unit: null,
  is_private: null,
  style: null,
  file_data: null,
  has_variations: null,
  should_auto_renew: null,
  language: null,
  price: null,
  taxonomy_id: null,
  shipping_profile: null,
  user: null,
  shop: null,
  images: null,
  videos: null,
  inventory: null,
  production_partners: null,
  skus: null,
  translations: null,
  views: null
)
```

