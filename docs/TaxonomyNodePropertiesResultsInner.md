# EtsyApi::TaxonomyNodePropertiesResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** | The unique numeric ID of this product property. | [optional] |
| **name** | **String** | The name string for this taxonomy node. | [optional] |
| **display_name** | **String** | The human-readable product property name string. | [optional] |
| **scales** | [**Array&lt;TaxonomyNodePropertyScalesInner&gt;**](TaxonomyNodePropertyScalesInner.md) | A list of available scales. | [optional] |
| **is_required** | **Boolean** | When true, listings assigned eligible taxonomy IDs require this property. | [optional] |
| **supports_attributes** | **Boolean** | When true, you can use this property in listing attributes. | [optional] |
| **supports_variations** | **Boolean** | When true, you can use this property in listing variations. | [optional] |
| **is_multivalued** | **Boolean** | When true, you can assign multiple property values to this property | [optional] |
| **max_values_allowed** | **Integer** | When true, you can assign multiple property values to this property | [optional] |
| **possible_values** | [**Array&lt;TaxonomyNodePropertyPossibleValuesInner&gt;**](TaxonomyNodePropertyPossibleValuesInner.md) | A list of supported property value strings for this property. | [optional] |
| **selected_values** | [**Array&lt;TaxonomyNodePropertySelectedValuesInner&gt;**](TaxonomyNodePropertySelectedValuesInner.md) | A list of property value strings automatically and always selected for the given property. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::TaxonomyNodePropertiesResultsInner.new(
  property_id: null,
  name: null,
  display_name: null,
  scales: null,
  is_required: null,
  supports_attributes: null,
  supports_variations: null,
  is_multivalued: null,
  max_values_allowed: null,
  possible_values: null,
  selected_values: null
)
```

