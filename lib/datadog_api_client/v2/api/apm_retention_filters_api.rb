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
  class APMRetentionFiltersAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create a retention filter.
    #
    # @see #create_apm_retention_filter_with_http_info
    def create_apm_retention_filter(body, opts = {})
      data, _status_code, _headers = create_apm_retention_filter_with_http_info(body, opts)
      data
    end

    # Create a retention filter.
    #
    # Create a retention filter to index spans in your organization.
    # Returns the retention filter definition when the request is successful.
    #
    # Default filters with types spans-errors-sampling-processor and spans-appsec-sampling-processor cannot be created.
    #
    # @param body [RetentionFilterCreateRequest] The definition of the new retention filter.
    # @param opts [Hash] the optional parameters
    # @return [Array<(RetentionFilterCreateResponse, Integer, Hash)>] RetentionFilterCreateResponse data, response status code and response headers
    def create_apm_retention_filter_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APMRetentionFiltersAPI.create_apm_retention_filter ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling APMRetentionFiltersAPI.create_apm_retention_filter"
      end
      # resource path
      local_var_path = '/api/v2/apm/config/retention-filters'

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
      return_type = opts[:debug_return_type] || 'RetentionFilterCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_apm_retention_filter,
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
        @api_client.config.logger.debug "API called: APMRetentionFiltersAPI#create_apm_retention_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a retention filter.
    #
    # @see #delete_apm_retention_filter_with_http_info
    def delete_apm_retention_filter(filter_id, opts = {})
      delete_apm_retention_filter_with_http_info(filter_id, opts)
      nil
    end

    # Delete a retention filter.
    #
    # Delete a specific retention filter from your organization.
    #
    # Default filters with types spans-errors-sampling-processor and spans-appsec-sampling-processor cannot be deleted.
    #
    # @param filter_id [String] The ID of the retention filter.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_apm_retention_filter_with_http_info(filter_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APMRetentionFiltersAPI.delete_apm_retention_filter ...'
      end
      # verify the required parameter 'filter_id' is set
      if @api_client.config.client_side_validation && filter_id.nil?
        fail ArgumentError, "Missing the required parameter 'filter_id' when calling APMRetentionFiltersAPI.delete_apm_retention_filter"
      end
      # resource path
      local_var_path = '/api/v2/apm/config/retention-filters/{filter_id}'.sub('{filter_id}', CGI.escape(filter_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_apm_retention_filter,
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
        @api_client.config.logger.debug "API called: APMRetentionFiltersAPI#delete_apm_retention_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a given APM retention filter.
    #
    # @see #get_apm_retention_filter_with_http_info
    def get_apm_retention_filter(filter_id, opts = {})
      data, _status_code, _headers = get_apm_retention_filter_with_http_info(filter_id, opts)
      data
    end

    # Get a given APM retention filter.
    #
    # Get an APM retention filter.
    #
    # @param filter_id [String] The ID of the retention filter.
    # @param opts [Hash] the optional parameters
    # @return [Array<(RetentionFilterResponse, Integer, Hash)>] RetentionFilterResponse data, response status code and response headers
    def get_apm_retention_filter_with_http_info(filter_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APMRetentionFiltersAPI.get_apm_retention_filter ...'
      end
      # verify the required parameter 'filter_id' is set
      if @api_client.config.client_side_validation && filter_id.nil?
        fail ArgumentError, "Missing the required parameter 'filter_id' when calling APMRetentionFiltersAPI.get_apm_retention_filter"
      end
      # resource path
      local_var_path = '/api/v2/apm/config/retention-filters/{filter_id}'.sub('{filter_id}', CGI.escape(filter_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'RetentionFilterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_apm_retention_filter,
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
        @api_client.config.logger.debug "API called: APMRetentionFiltersAPI#get_apm_retention_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all APM retention filters.
    #
    # @see #list_apm_retention_filters_with_http_info
    def list_apm_retention_filters(opts = {})
      data, _status_code, _headers = list_apm_retention_filters_with_http_info(opts)
      data
    end

    # List all APM retention filters.
    #
    # Get the list of APM retention filters.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(RetentionFiltersResponse, Integer, Hash)>] RetentionFiltersResponse data, response status code and response headers
    def list_apm_retention_filters_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APMRetentionFiltersAPI.list_apm_retention_filters ...'
      end
      # resource path
      local_var_path = '/api/v2/apm/config/retention-filters'

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
      return_type = opts[:debug_return_type] || 'RetentionFiltersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_apm_retention_filters,
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
        @api_client.config.logger.debug "API called: APMRetentionFiltersAPI#list_apm_retention_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Re-order retention filters.
    #
    # @see #reorder_apm_retention_filters_with_http_info
    def reorder_apm_retention_filters(body, opts = {})
      reorder_apm_retention_filters_with_http_info(body, opts)
      nil
    end

    # Re-order retention filters.
    #
    # Re-order the execution order of retention filters.
    #
    # @param body [ReorderRetentionFiltersRequest] The list of retention filters in the new order.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def reorder_apm_retention_filters_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APMRetentionFiltersAPI.reorder_apm_retention_filters ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling APMRetentionFiltersAPI.reorder_apm_retention_filters"
      end
      # resource path
      local_var_path = '/api/v2/apm/config/retention-filters-execution-order'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :reorder_apm_retention_filters,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Put, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APMRetentionFiltersAPI#reorder_apm_retention_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a retention filter.
    #
    # @see #update_apm_retention_filter_with_http_info
    def update_apm_retention_filter(filter_id, body, opts = {})
      data, _status_code, _headers = update_apm_retention_filter_with_http_info(filter_id, body, opts)
      data
    end

    # Update a retention filter.
    #
    # Update a retention filter from your organization.
    #
    # Default filters (filters with types spans-errors-sampling-processor and spans-appsec-sampling-processor) cannot be renamed or removed.
    #
    # @param filter_id [String] The ID of the retention filter.
    # @param body [RetentionFilterUpdateRequest] The updated definition of the retention filter.
    # @param opts [Hash] the optional parameters
    # @return [Array<(RetentionFilterResponse, Integer, Hash)>] RetentionFilterResponse data, response status code and response headers
    def update_apm_retention_filter_with_http_info(filter_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APMRetentionFiltersAPI.update_apm_retention_filter ...'
      end
      # verify the required parameter 'filter_id' is set
      if @api_client.config.client_side_validation && filter_id.nil?
        fail ArgumentError, "Missing the required parameter 'filter_id' when calling APMRetentionFiltersAPI.update_apm_retention_filter"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling APMRetentionFiltersAPI.update_apm_retention_filter"
      end
      # resource path
      local_var_path = '/api/v2/apm/config/retention-filters/{filter_id}'.sub('{filter_id}', CGI.escape(filter_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'RetentionFilterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_apm_retention_filter,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Put, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APMRetentionFiltersAPI#update_apm_retention_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
