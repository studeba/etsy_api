=begin
#Etsy Open API v3

#<div class=\"wt-text-body-01\"><p class=\"wt-pt-xs-2 wt-pb-xs-2\">Etsy's Open API provides a simple RESTful interface for various Etsy.com features. The API endpoints are meant to replace Etsy's Open API v2, which is scheduled to end service in 2022.</p><p class=\"wt-pb-xs-2\">All of the endpoints are callable and the majority of the API endpoints are now in a beta phase. This means we do not expect to make any breaking changes before our general release. A handful of endpoints are currently interface stubs (labeled “Feedback Only”) and returns a \"501 Not Implemented\" response code when called.</p><p class=\"wt-pb-xs-2\">If you'd like to report an issue or provide feedback on the API design, <a target=\"_blank\" class=\"wt-text-link wt-p-xs-0\" href=\"https://github.com/etsy/open-api/issues/new/choose\">please add an issue in Github</a>.</p></div>&copy; 2021-2022 Etsy, Inc. All Rights Reserved. Use of this code is subject to Etsy's <a class='wt-text-link wt-p-xs-0' target='_blank' href='https://www.etsy.com/legal/api'>API Developer Terms of Use</a>.

The version of the OpenAPI document: 3.0.0
Contact: developers@etsy.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module EtsyApi
  class ShopReceiptTransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a transaction by transaction ID.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param transaction_id [Integer] The unique numeric ID for a transaction.
    # @param [Hash] opts the optional parameters
    # @return [ShopReceiptTransaction]
    def get_shop_receipt_transaction(shop_id, transaction_id, opts = {})
      data, _status_code, _headers = get_shop_receipt_transaction_with_http_info(shop_id, transaction_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Retrieves a transaction by transaction ID.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param transaction_id [Integer] The unique numeric ID for a transaction.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ShopReceiptTransaction, Integer, Hash)>] ShopReceiptTransaction data, response status code and response headers
    def get_shop_receipt_transaction_with_http_info(shop_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopReceiptTransactionsApi.get_shop_receipt_transaction ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling ShopReceiptTransactionsApi.get_shop_receipt_transaction"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling ShopReceiptTransactionsApi.get_shop_receipt_transaction, must be greater than or equal to 1.'
      end

      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling ShopReceiptTransactionsApi.get_shop_receipt_transaction"
      end
      if @api_client.config.client_side_validation && transaction_id < 1
        fail ArgumentError, 'invalid value for "transaction_id" when calling ShopReceiptTransactionsApi.get_shop_receipt_transaction, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}/transactions/{transaction_id}'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s)).sub('{' + 'transaction_id' + '}', CGI.escape(transaction_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ShopReceiptTransaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ShopReceiptTransactionsApi.get_shop_receipt_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopReceiptTransactionsApi#get_shop_receipt_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the list of transactions associated with a listing.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param listing_id [Integer] The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of results to return. (default to 25)
    # @option opts [Integer] :offset The number of records to skip before selecting the first result. (default to 0)
    # @return [ShopReceiptTransactions]
    def get_shop_receipt_transactions_by_listing(shop_id, listing_id, opts = {})
      data, _status_code, _headers = get_shop_receipt_transactions_by_listing_with_http_info(shop_id, listing_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Retrieves the list of transactions associated with a listing.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param listing_id [Integer] The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of results to return. (default to 25)
    # @option opts [Integer] :offset The number of records to skip before selecting the first result. (default to 0)
    # @return [Array<(ShopReceiptTransactions, Integer, Hash)>] ShopReceiptTransactions data, response status code and response headers
    def get_shop_receipt_transactions_by_listing_with_http_info(shop_id, listing_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_listing ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_listing"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_listing, must be greater than or equal to 1.'
      end

      # verify the required parameter 'listing_id' is set
      if @api_client.config.client_side_validation && listing_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_id' when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_listing"
      end
      if @api_client.config.client_side_validation && listing_id < 1
        fail ArgumentError, 'invalid value for "listing_id" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_listing, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_listing, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_listing, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_listing, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}/listings/{listing_id}/transactions'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s)).sub('{' + 'listing_id' + '}', CGI.escape(listing_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ShopReceiptTransactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_listing",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopReceiptTransactionsApi#get_shop_receipt_transactions_by_listing\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the list of transactions associated with a specific receipt.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param receipt_id [Integer] The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction.
    # @param [Hash] opts the optional parameters
    # @return [ShopReceiptTransactions]
    def get_shop_receipt_transactions_by_receipt(shop_id, receipt_id, opts = {})
      data, _status_code, _headers = get_shop_receipt_transactions_by_receipt_with_http_info(shop_id, receipt_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Retrieves the list of transactions associated with a specific receipt.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param receipt_id [Integer] The numeric ID for the [receipt](/documentation/reference#tag/Shop-Receipt) associated to this transaction.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ShopReceiptTransactions, Integer, Hash)>] ShopReceiptTransactions data, response status code and response headers
    def get_shop_receipt_transactions_by_receipt_with_http_info(shop_id, receipt_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_receipt ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_receipt"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_receipt, must be greater than or equal to 1.'
      end

      # verify the required parameter 'receipt_id' is set
      if @api_client.config.client_side_validation && receipt_id.nil?
        fail ArgumentError, "Missing the required parameter 'receipt_id' when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_receipt"
      end
      if @api_client.config.client_side_validation && receipt_id < 1
        fail ArgumentError, 'invalid value for "receipt_id" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_receipt, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}/receipts/{receipt_id}/transactions'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s)).sub('{' + 'receipt_id' + '}', CGI.escape(receipt_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ShopReceiptTransactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_receipt",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopReceiptTransactionsApi#get_shop_receipt_transactions_by_receipt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the list of transactions associated with a shop.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of results to return. (default to 25)
    # @option opts [Integer] :offset The number of records to skip before selecting the first result. (default to 0)
    # @return [ShopReceiptTransactions]
    def get_shop_receipt_transactions_by_shop(shop_id, opts = {})
      data, _status_code, _headers = get_shop_receipt_transactions_by_shop_with_http_info(shop_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Retrieves the list of transactions associated with a shop.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of results to return. (default to 25)
    # @option opts [Integer] :offset The number of records to skip before selecting the first result. (default to 0)
    # @return [Array<(ShopReceiptTransactions, Integer, Hash)>] ShopReceiptTransactions data, response status code and response headers
    def get_shop_receipt_transactions_by_shop_with_http_info(shop_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_shop ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_shop"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_shop, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_shop, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_shop, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_shop, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}/transactions'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ShopReceiptTransactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ShopReceiptTransactionsApi.get_shop_receipt_transactions_by_shop",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopReceiptTransactionsApi#get_shop_receipt_transactions_by_shop\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
