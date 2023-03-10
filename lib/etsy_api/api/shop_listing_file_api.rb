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
  class ShopListingFileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Deletes a file from a specific listing. When you delete the final file for a digital listing, the listing converts into a physical listing. The response to a delete request returns a list of the remaining file records associated with the given listing.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param listing_id [Integer] The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    # @param listing_file_id [Integer] The unique numeric ID of a file associated with a digital listing.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_listing_file(shop_id, listing_id, listing_file_id, opts = {})
      delete_listing_file_with_http_info(shop_id, listing_id, listing_file_id, opts)
      nil
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Deletes a file from a specific listing. When you delete the final file for a digital listing, the listing converts into a physical listing. The response to a delete request returns a list of the remaining file records associated with the given listing.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param listing_id [Integer] The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    # @param listing_file_id [Integer] The unique numeric ID of a file associated with a digital listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_listing_file_with_http_info(shop_id, listing_id, listing_file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopListingFileApi.delete_listing_file ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling ShopListingFileApi.delete_listing_file"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling ShopListingFileApi.delete_listing_file, must be greater than or equal to 1.'
      end

      # verify the required parameter 'listing_id' is set
      if @api_client.config.client_side_validation && listing_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_id' when calling ShopListingFileApi.delete_listing_file"
      end
      if @api_client.config.client_side_validation && listing_id < 1
        fail ArgumentError, 'invalid value for "listing_id" when calling ShopListingFileApi.delete_listing_file, must be greater than or equal to 1.'
      end

      # verify the required parameter 'listing_file_id' is set
      if @api_client.config.client_side_validation && listing_file_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_file_id' when calling ShopListingFileApi.delete_listing_file"
      end
      if @api_client.config.client_side_validation && listing_file_id < 1
        fail ArgumentError, 'invalid value for "listing_file_id" when calling ShopListingFileApi.delete_listing_file, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}/listings/{listing_id}/files/{listing_file_id}'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s)).sub('{' + 'listing_id' + '}', CGI.escape(listing_id.to_s)).sub('{' + 'listing_file_id' + '}', CGI.escape(listing_file_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ShopListingFileApi.delete_listing_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopListingFileApi#delete_listing_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves all the files associated with the given digital listing. Requesting files from a physical listing returns an empty result.
    # @param listing_id [Integer] The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param [Hash] opts the optional parameters
    # @return [ShopListingFiles]
    def get_all_listing_files(listing_id, shop_id, opts = {})
      data, _status_code, _headers = get_all_listing_files_with_http_info(listing_id, shop_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Retrieves all the files associated with the given digital listing. Requesting files from a physical listing returns an empty result.
    # @param listing_id [Integer] The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ShopListingFiles, Integer, Hash)>] ShopListingFiles data, response status code and response headers
    def get_all_listing_files_with_http_info(listing_id, shop_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopListingFileApi.get_all_listing_files ...'
      end
      # verify the required parameter 'listing_id' is set
      if @api_client.config.client_side_validation && listing_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_id' when calling ShopListingFileApi.get_all_listing_files"
      end
      if @api_client.config.client_side_validation && listing_id < 1
        fail ArgumentError, 'invalid value for "listing_id" when calling ShopListingFileApi.get_all_listing_files, must be greater than or equal to 1.'
      end

      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling ShopListingFileApi.get_all_listing_files"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling ShopListingFileApi.get_all_listing_files, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}/listings/{listing_id}/files'.sub('{' + 'listing_id' + '}', CGI.escape(listing_id.to_s)).sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ShopListingFiles'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ShopListingFileApi.get_all_listing_files",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopListingFileApi#get_all_listing_files\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Retrieves a single file associated with the given digital listing. Requesting a file from a physical listing returns an empty result.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param listing_id [Integer] The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    # @param listing_file_id [Integer] The unique numeric ID of a file associated with a digital listing.
    # @param [Hash] opts the optional parameters
    # @return [ShopListingFile]
    def get_listing_file(shop_id, listing_id, listing_file_id, opts = {})
      data, _status_code, _headers = get_listing_file_with_http_info(shop_id, listing_id, listing_file_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Retrieves a single file associated with the given digital listing. Requesting a file from a physical listing returns an empty result.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param listing_id [Integer] The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    # @param listing_file_id [Integer] The unique numeric ID of a file associated with a digital listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ShopListingFile, Integer, Hash)>] ShopListingFile data, response status code and response headers
    def get_listing_file_with_http_info(shop_id, listing_id, listing_file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopListingFileApi.get_listing_file ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling ShopListingFileApi.get_listing_file"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling ShopListingFileApi.get_listing_file, must be greater than or equal to 1.'
      end

      # verify the required parameter 'listing_id' is set
      if @api_client.config.client_side_validation && listing_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_id' when calling ShopListingFileApi.get_listing_file"
      end
      if @api_client.config.client_side_validation && listing_id < 1
        fail ArgumentError, 'invalid value for "listing_id" when calling ShopListingFileApi.get_listing_file, must be greater than or equal to 1.'
      end

      # verify the required parameter 'listing_file_id' is set
      if @api_client.config.client_side_validation && listing_file_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_file_id' when calling ShopListingFileApi.get_listing_file"
      end
      if @api_client.config.client_side_validation && listing_file_id < 1
        fail ArgumentError, 'invalid value for "listing_file_id" when calling ShopListingFileApi.get_listing_file, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}/listings/{listing_id}/files/{listing_file_id}'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s)).sub('{' + 'listing_id' + '}', CGI.escape(listing_id.to_s)).sub('{' + 'listing_file_id' + '}', CGI.escape(listing_file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ShopListingFile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ShopListingFileApi.get_listing_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopListingFileApi#get_listing_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # <div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><span class=\"wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\">General Release</span><a class=\"wt-text-link\" href=\"https://github.com/etsy/open-api/issues/new/choose\" target=\"_blank\" rel=\"noopener noreferrer\">Report bug</a></div><div class=\"wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\"><p class=\"wt-text-body-01 banner-text\">This endpoint is ready for production use.</p></div>  Uploads a new file for a digital listing, or associates an existing file with a specific listing. You must either provide the `listing_file_id` of an existing file, or the name and binary file data for a file to upload. Associating an existing file to a physical listing converts the physical listing into a digital listing, which removes all shipping costs and any product and inventory variations.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param listing_id [Integer] The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :listing_file_id The unique numeric ID of a file associated with a digital listing.
    # @option opts [File] :file A binary file to upload.
    # @option opts [String] :name The file name string of a file to upload
    # @option opts [Integer] :rank The positive non-zero numeric position in the images displayed in a listing, with rank 1 images appearing in the left-most position in a listing. (default to 1)
    # @return [ShopListingFile]
    def upload_listing_file(shop_id, listing_id, opts = {})
      data, _status_code, _headers = upload_listing_file_with_http_info(shop_id, listing_id, opts)
      data
    end

    # &lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;span class&#x3D;\&quot;wt-badge wt-badge--notification-03 wt-bg-slime-tint wt-mr-xs-2\&quot;&gt;General Release&lt;/span&gt;&lt;a class&#x3D;\&quot;wt-text-link\&quot; href&#x3D;\&quot;https://github.com/etsy/open-api/issues/new/choose\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Report bug&lt;/a&gt;&lt;/div&gt;&lt;div class&#x3D;\&quot;wt-display-flex-xs wt-align-items-center wt-mt-xs-2 wt-mb-xs-3\&quot;&gt;&lt;p class&#x3D;\&quot;wt-text-body-01 banner-text\&quot;&gt;This endpoint is ready for production use.&lt;/p&gt;&lt;/div&gt;  Uploads a new file for a digital listing, or associates an existing file with a specific listing. You must either provide the &#x60;listing_file_id&#x60; of an existing file, or the name and binary file data for a file to upload. Associating an existing file to a physical listing converts the physical listing into a digital listing, which removes all shipping costs and any product and inventory variations.
    # @param shop_id [Integer] The unique positive non-zero numeric ID for an Etsy Shop.
    # @param listing_id [Integer] The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :listing_file_id The unique numeric ID of a file associated with a digital listing.
    # @option opts [File] :file A binary file to upload.
    # @option opts [String] :name The file name string of a file to upload
    # @option opts [Integer] :rank The positive non-zero numeric position in the images displayed in a listing, with rank 1 images appearing in the left-most position in a listing. (default to 1)
    # @return [Array<(ShopListingFile, Integer, Hash)>] ShopListingFile data, response status code and response headers
    def upload_listing_file_with_http_info(shop_id, listing_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopListingFileApi.upload_listing_file ...'
      end
      # verify the required parameter 'shop_id' is set
      if @api_client.config.client_side_validation && shop_id.nil?
        fail ArgumentError, "Missing the required parameter 'shop_id' when calling ShopListingFileApi.upload_listing_file"
      end
      if @api_client.config.client_side_validation && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id" when calling ShopListingFileApi.upload_listing_file, must be greater than or equal to 1.'
      end

      # verify the required parameter 'listing_id' is set
      if @api_client.config.client_side_validation && listing_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_id' when calling ShopListingFileApi.upload_listing_file"
      end
      if @api_client.config.client_side_validation && listing_id < 1
        fail ArgumentError, 'invalid value for "listing_id" when calling ShopListingFileApi.upload_listing_file, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'listing_file_id'].nil? && opts[:'listing_file_id'] < 1
        fail ArgumentError, 'invalid value for "opts[:"listing_file_id"]" when calling ShopListingFileApi.upload_listing_file, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'rank'].nil? && opts[:'rank'] < 1
        fail ArgumentError, 'invalid value for "opts[:"rank"]" when calling ShopListingFileApi.upload_listing_file, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/application/shops/{shop_id}/listings/{listing_id}/files'.sub('{' + 'shop_id' + '}', CGI.escape(shop_id.to_s)).sub('{' + 'listing_id' + '}', CGI.escape(listing_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['listing_file_id'] = opts[:'listing_file_id'] if !opts[:'listing_file_id'].nil?
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['rank'] = opts[:'rank'] if !opts[:'rank'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ShopListingFile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ShopListingFileApi.upload_listing_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopListingFileApi#upload_listing_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
