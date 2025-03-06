=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V2
  class RumRetentionFiltersAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create a RUM retention filter.
    #
    # @see #create_retention_filter_with_http_info
    def create_retention_filter(app_id, body, opts = {})
      data, _status_code, _headers = create_retention_filter_with_http_info(app_id, body, opts)
      data
    end

    # Create a RUM retention filter.
    #
    # Create a RUM retention filter for an application.
    # Returns RUM retention filter objects from the request body when the request is successful.
    #
    # @param app_id [String] Application ID.
    # @param body [RumRetentionFilterCreateRequest] The definition of the new RUM retention filter.
    # @param opts [Hash] the optional parameters
    # @return [Array<(RumRetentionFilterResponse, Integer, Hash)>] RumRetentionFilterResponse data, response status code and response headers
    def create_retention_filter_with_http_info(app_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RumRetentionFiltersAPI.create_retention_filter ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling RumRetentionFiltersAPI.create_retention_filter"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RumRetentionFiltersAPI.create_retention_filter"
      end
      # resource path
      local_var_path = '/api/v2/rum/applications/{app_id}/retention_filters'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'RumRetentionFilterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_retention_filter,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Post, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RumRetentionFiltersAPI#create_retention_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a RUM retention filter.
    #
    # @see #delete_retention_filter_with_http_info
    def delete_retention_filter(app_id, rf_id, opts = {})
      delete_retention_filter_with_http_info(app_id, rf_id, opts)
      nil
    end

    # Delete a RUM retention filter.
    #
    # Delete a RUM retention filter for an application.
    #
    # @param app_id [String] Application ID.
    # @param rf_id [String] Retention filter ID.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_retention_filter_with_http_info(app_id, rf_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RumRetentionFiltersAPI.delete_retention_filter ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling RumRetentionFiltersAPI.delete_retention_filter"
      end
      # verify the required parameter 'rf_id' is set
      if @api_client.config.client_side_validation && rf_id.nil?
        fail ArgumentError, "Missing the required parameter 'rf_id' when calling RumRetentionFiltersAPI.delete_retention_filter"
      end
      # resource path
      local_var_path = '/api/v2/rum/applications/{app_id}/retention_filters/{rf_id}'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/')).sub('{rf_id}', CGI.escape(rf_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_retention_filter,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Delete, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RumRetentionFiltersAPI#delete_retention_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a RUM retention filter.
    #
    # @see #get_retention_filter_with_http_info
    def get_retention_filter(app_id, rf_id, opts = {})
      data, _status_code, _headers = get_retention_filter_with_http_info(app_id, rf_id, opts)
      data
    end

    # Get a RUM retention filter.
    #
    # Get a RUM retention filter for an application.
    #
    # @param app_id [String] Application ID.
    # @param rf_id [String] Retention filter ID.
    # @param opts [Hash] the optional parameters
    # @return [Array<(RumRetentionFilterResponse, Integer, Hash)>] RumRetentionFilterResponse data, response status code and response headers
    def get_retention_filter_with_http_info(app_id, rf_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RumRetentionFiltersAPI.get_retention_filter ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling RumRetentionFiltersAPI.get_retention_filter"
      end
      # verify the required parameter 'rf_id' is set
      if @api_client.config.client_side_validation && rf_id.nil?
        fail ArgumentError, "Missing the required parameter 'rf_id' when calling RumRetentionFiltersAPI.get_retention_filter"
      end
      # resource path
      local_var_path = '/api/v2/rum/applications/{app_id}/retention_filters/{rf_id}'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/')).sub('{rf_id}', CGI.escape(rf_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'RumRetentionFilterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_retention_filter,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RumRetentionFiltersAPI#get_retention_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all RUM retention filters.
    #
    # @see #list_retention_filters_with_http_info
    def list_retention_filters(app_id, opts = {})
      data, _status_code, _headers = list_retention_filters_with_http_info(app_id, opts)
      data
    end

    # Get all RUM retention filters.
    #
    # Get the list of RUM retention filters for an application.
    #
    # @param app_id [String] Application ID.
    # @param opts [Hash] the optional parameters
    # @return [Array<(RumRetentionFiltersResponse, Integer, Hash)>] RumRetentionFiltersResponse data, response status code and response headers
    def list_retention_filters_with_http_info(app_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RumRetentionFiltersAPI.list_retention_filters ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling RumRetentionFiltersAPI.list_retention_filters"
      end
      # resource path
      local_var_path = '/api/v2/rum/applications/{app_id}/retention_filters'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'RumRetentionFiltersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_retention_filters,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RumRetentionFiltersAPI#list_retention_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Order RUM retention filters.
    #
    # @see #order_retention_filters_with_http_info
    def order_retention_filters(app_id, body, opts = {})
      data, _status_code, _headers = order_retention_filters_with_http_info(app_id, body, opts)
      data
    end

    # Order RUM retention filters.
    #
    # Order RUM retention filters for an application.
    # Returns RUM retention filter objects without attributes and meta from the request body when the request is successful.
    #
    # @param app_id [String] Application ID.
    # @param body [RumRetentionFiltersOrderRequest] New definition of the RUM retention filter.
    # @param opts [Hash] the optional parameters
    # @return [Array<(RumRetentionFiltersOrderResponse, Integer, Hash)>] RumRetentionFiltersOrderResponse data, response status code and response headers
    def order_retention_filters_with_http_info(app_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RumRetentionFiltersAPI.order_retention_filters ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling RumRetentionFiltersAPI.order_retention_filters"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RumRetentionFiltersAPI.order_retention_filters"
      end
      # resource path
      local_var_path = '/api/v2/rum/applications/{app_id}/relationships/retention_filters'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'RumRetentionFiltersOrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :order_retention_filters,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Patch, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RumRetentionFiltersAPI#order_retention_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a RUM retention filter.
    #
    # @see #update_retention_filter_with_http_info
    def update_retention_filter(app_id, rf_id, body, opts = {})
      data, _status_code, _headers = update_retention_filter_with_http_info(app_id, rf_id, body, opts)
      data
    end

    # Update a RUM retention filter.
    #
    # Update a RUM retention filter for an application.
    # Returns RUM retention filter objects from the request body when the request is successful.
    #
    # @param app_id [String] Application ID.
    # @param rf_id [String] Retention filter ID.
    # @param body [RumRetentionFilterUpdateRequest] New definition of the RUM retention filter.
    # @param opts [Hash] the optional parameters
    # @return [Array<(RumRetentionFilterResponse, Integer, Hash)>] RumRetentionFilterResponse data, response status code and response headers
    def update_retention_filter_with_http_info(app_id, rf_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RumRetentionFiltersAPI.update_retention_filter ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling RumRetentionFiltersAPI.update_retention_filter"
      end
      # verify the required parameter 'rf_id' is set
      if @api_client.config.client_side_validation && rf_id.nil?
        fail ArgumentError, "Missing the required parameter 'rf_id' when calling RumRetentionFiltersAPI.update_retention_filter"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RumRetentionFiltersAPI.update_retention_filter"
      end
      # resource path
      local_var_path = '/api/v2/rum/applications/{app_id}/retention_filters/{rf_id}'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/')).sub('{rf_id}', CGI.escape(rf_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'RumRetentionFilterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_retention_filter,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Patch, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RumRetentionFiltersAPI#update_retention_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
