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
  class LedgerEntryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Get a Shop Payment Account Ledger's Entries
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param min_created [Integer] The earliest unix timestamp for when a record was created.
    # @param max_created [Integer] The latest unix timestamp for when a record was created.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of results to return. (default to 25)
    # @option opts [Integer] :offset The number of records to skip before selecting the first result. (default to 0)
    # @return [PaymentAccountLedgerEntries]
    def get_shop_payment_account_ledger_entries(shop_id, min_created, max_created, opts = {})
      data, _status_code, _headers = get_shop_payment_account_ledger_entries_with_http_info(shop_id, min_created, max_created, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Get a Shop Payment Account Ledger&#39;s Entries
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param min_created [Integer] The earliest unix timestamp for when a record was created.
    # @param max_created [Integer] The latest unix timestamp for when a record was created.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of results to return. (default to 25)
    # @option opts [Integer] :offset The number of records to skip before selecting the first result. (default to 0)
    # @return [Array<(PaymentAccountLedgerEntries, Integer, Hash)>] PaymentAccountLedgerEntries data, response status code and response headers
    def get_shop_payment_account_ledger_entries_with_http_info(shop_id, min_created, max_created, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedgerEntryApi.get_shop_payment_account_ledger_entries ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling LedgerEntryApi.get_shop_payment_account_ledger_entries"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling LedgerEntryApi.get_shop_payment_account_ledger_entries, must be greater than or equal to 1.'
      end

      # verify the required parameter 'min_created' is set
      if @api_client.config.client_side_validation && min_created.nil?
        fail ArgumentError, "Missing the required parameter 'min_created' when calling LedgerEntryApi.get_shop_payment_account_ledger_entries"
      end
      if @api_client.config.client_side_validation && min_created < 946684800
        fail ArgumentError, 'invalid value for "min_created" when calling LedgerEntryApi.get_shop_payment_account_ledger_entries, must be greater than or equal to 946684800.'
      end

      # verify the required parameter 'max_created' is set
      if @api_client.config.client_side_validation && max_created.nil?
        fail ArgumentError, "Missing the required parameter 'max_created' when calling LedgerEntryApi.get_shop_payment_account_ledger_entries"
      end
      if @api_client.config.client_side_validation && max_created < 946684800
        fail ArgumentError, 'invalid value for "max_created" when calling LedgerEntryApi.get_shop_payment_account_ledger_entries, must be greater than or equal to 946684800.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling LedgerEntryApi.get_shop_payment_account_ledger_entries, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling LedgerEntryApi.get_shop_payment_account_ledger_entries, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling LedgerEntryApi.get_shop_payment_account_ledger_entries, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}/payment-account/ledger-entries'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'min_created'] = min_created
      query_params[:'max_created'] = max_created
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
      return_type = opts[:debug_return_type] || 'PaymentAccountLedgerEntries'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"LedgerEntryApi.get_shop_payment_account_ledger_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedgerEntryApi#get_shop_payment_account_ledger_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Get a single Shop Payment Account Ledger's Entry
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param ledger_entry_id [Integer] The unique ID of the shop owner ledger entry.
    # @param [Hash] opts the optional parameters
    # @return [PaymentAccountLedgerEntry]
    def get_shop_payment_account_ledger_entry(shop_id, ledger_entry_id, opts = {})
      data, _status_code, _headers = get_shop_payment_account_ledger_entry_with_http_info(shop_id, ledger_entry_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Get a single Shop Payment Account Ledger&#39;s Entry
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param ledger_entry_id [Integer] The unique ID of the shop owner ledger entry.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentAccountLedgerEntry, Integer, Hash)>] PaymentAccountLedgerEntry data, response status code and response headers
    def get_shop_payment_account_ledger_entry_with_http_info(shop_id, ledger_entry_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedgerEntryApi.get_shop_payment_account_ledger_entry ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling LedgerEntryApi.get_shop_payment_account_ledger_entry"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling LedgerEntryApi.get_shop_payment_account_ledger_entry, must be greater than or equal to 1.'
      end

      # verify the required parameter 'ledger_entry_id' is set
      if @api_client.config.client_side_validation && ledger_entry_id.nil?
        fail ArgumentError, "Missing the required parameter 'ledger_entry_id' when calling LedgerEntryApi.get_shop_payment_account_ledger_entry"
      end
      if @api_client.config.client_side_validation && ledger_entry_id < 1
        fail ArgumentError, 'invalid value for "ledger_entry_id" when calling LedgerEntryApi.get_shop_payment_account_ledger_entry, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}/payment-account/ledger-entries/{ledger_entry_id}'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s)).sub('{' + 'ledger_entry_id' + '}', CGI.escape(ledger_entry_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PaymentAccountLedgerEntry'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"LedgerEntryApi.get_shop_payment_account_ledger_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedgerEntryApi#get_shop_payment_account_ledger_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
