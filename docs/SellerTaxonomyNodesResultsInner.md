# EtsyApi::SellerTaxonomyNodesResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique numeric ID of an Etsy taxonomy node, which is a metadata category for listings organized into the seller taxonomy hierarchy tree. For example, the \\\&quot;shoes\\\&quot; taxonomy node (ID: 1429, level: 1) is higher in the hierarchy than \\\&quot;girls&#39; shoes\\\&quot; (ID: 1440, level: 2). The taxonomy nodes assigned to a listing support access to specific standardized product scales and properties. For example, listings assigned the taxonomy nodes \\\&quot;shoes\\\&quot; or \\\&quot;girls&#39; shoes\\\&quot; support access to the \\\&quot;EU\\\&quot; shoe size scale with its associated property names and IDs for EU shoe sizes, such as property &#x60;value_id&#x60;:\\\&quot;1394\\\&quot;, and &#x60;name&#x60;:\\\&quot;38\\\&quot;. | [optional] |
| **level** | **Integer** | The integer depth of this taxonomy node in the seller taxonomy tree, with roots at level 0. | [optional] |
| **name** | **String** | The name string for this taxonomy node. | [optional] |
| **parent_id** | **Integer** | The numeric taxonomy ID of the parent of this node. | [optional] |
| **children** | [**Array&lt;SellerTaxonomyNodeChildrenInner&gt;**](SellerTaxonomyNodeChildrenInner.md) | An array of taxonomy nodes for all the direct children of this taxonomy node in the seller taxonomy tree. | [optional] |
| **full_path_taxonomy_ids** | **Array&lt;Integer&gt;** | An array of &#x60;taxonomy_id&#x60;s including this node and all of its direct parents in the seller taxonomy tree up to a root node. They are listed in order from root to leaf. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::SellerTaxonomyNodesResultsInner.new(
  id: null,
  level: null,
  name: null,
  parent_id: null,
  children: null,
  full_path_taxonomy_ids: null
)
```

