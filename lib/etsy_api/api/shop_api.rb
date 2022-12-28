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
  class ShopApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Open API V3 endpoint for searching shops by name. Note: We make every effort to ensure that frozen or removed shops are not included in the search results. However, rarely, due to timing issues, they may appear.
    # @param shop_name [String] The shop&#39;s name string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of results to return. (default to 25)
    # @option opts [Integer] :offset The number of records to skip before selecting the first result. (default to 0)
    # @return [Shops]
    def find_shops(shop_name, opts = {})
      data, _status_code, _headers = find_shops_with_http_info(shop_name, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Open API V3 endpoint for searching shops by name. Note: We make every effort to ensure that frozen or removed shops are not included in the search results. However, rarely, due to timing issues, they may appear.
    # @param shop_name [String] The shop&#39;s name string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of results to return. (default to 25)
    # @option opts [Integer] :offset The number of records to skip before selecting the first result. (default to 0)
    # @return [Array<(Shops, Integer, Hash)>] Shops data, response status code and response headers
    def find_shops_with_http_info(shop_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopApi.find_shops ...'
      end
      # verify the required parameter 'shop_name' is set
      if @api_client.config.client_side_validation && shop_name.nil?
        fail ArgumentError, "Missing the required parameter 'shop_name' when calling ShopApi.find_shops"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ShopApi.find_shops, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ShopApi.find_shops, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ShopApi.find_shops, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/v3/application/shops'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'shop_name'] = shop_name
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
      return_type = opts[:debug_return_type] || 'Shops'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ShopApi.find_shops",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopApi#find_shops\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the shop identified by a specific shop ID.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param [Hash] opts the optional parameters
    # @return [Shop]
    def get_shop(shop_id, opts = {})
      data, _status_code, _headers = get_shop_with_http_info(shop_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Retrieves the shop identified by a specific shop ID.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Shop, Integer, Hash)>] Shop data, response status code and response headers
    def get_shop_with_http_info(shop_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopApi.get_shop ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling ShopApi.get_shop"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling ShopApi.get_shop, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Shop'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ShopApi.get_shop",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopApi#get_shop\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves the shop identified by the shop owner's user ID.
    # @param user_id [Integer] The numeric user ID of the [user](/documentation/reference#tag/User) who owns this shop.
    # @param [Hash] opts the optional parameters
    # @return [Shop]
    def get_shop_by_owner_user_id(user_id, opts = {})
      data, _status_code, _headers = get_shop_by_owner_user_id_with_http_info(user_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Retrieves the shop identified by the shop owner&#39;s user ID.
    # @param user_id [Integer] The numeric user ID of the [user](/documentation/reference#tag/User) who owns this shop.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Shop, Integer, Hash)>] Shop data, response status code and response headers
    def get_shop_by_owner_user_id_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopApi.get_shop_by_owner_user_id ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ShopApi.get_shop_by_owner_user_id"
      end
      if @api_client.config.client_side_validation && user_id < 1
        fail ArgumentError, 'invalid value for "user_id" when calling ShopApi.get_shop_by_owner_user_id, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/application/users/{user_id}/shops'.sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Shop'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ShopApi.get_shop_by_owner_user_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopApi#get_shop_by_owner_user_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Update a shop. Assumes that all string parameters are provided in the shop's primary language.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :title A brief heading string for the shop&#39;s main page.
    # @option opts [String] :announcement An announcement string to buyers that displays on the shop&#39;s homepage.
    # @option opts [String] :sale_message A message string sent to users who complete a purchase from this shop.
    # @option opts [String] :digital_sale_message A message string sent to users who purchase a digital item from this shop.
    # @return [Shop]
    def update_shop(shop_id, opts = {})
      data, _status_code, _headers = update_shop_with_http_info(shop_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Update a shop. Assumes that all string parameters are provided in the shop&#39;s primary language.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :title A brief heading string for the shop&#39;s main page.
    # @option opts [String] :announcement An announcement string to buyers that displays on the shop&#39;s homepage.
    # @option opts [String] :sale_message A message string sent to users who complete a purchase from this shop.
    # @option opts [String] :digital_sale_message A message string sent to users who purchase a digital item from this shop.
    # @return [Array<(Shop, Integer, Hash)>] Shop data, response status code and response headers
    def update_shop_with_http_info(shop_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopApi.update_shop ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling ShopApi.update_shop"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling ShopApi.update_shop, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['title'] = opts[:'title'] if !opts[:'title'].nil?
      form_params['announcement'] = opts[:'announcement'] if !opts[:'announcement'].nil?
      form_params['sale_message'] = opts[:'sale_message'] if !opts[:'sale_message'].nil?
      form_params['digital_sale_message'] = opts[:'digital_sale_message'] if !opts[:'digital_sale_message'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Shop'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ShopApi.update_shop",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopApi#update_shop\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
