=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V1
  class LogsIndexesAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Create an index
    # Creates a new index. Returns the Index object passed in the request body when the request is successful.
    # @param body [LogsIndex] Object containing the new index.
    # @param opts [Hash] the optional parameters
    # @return [LogsIndex]
    def create_logs_index(body, opts = {})
      data, _status_code, _headers = create_logs_index_with_http_info(body, opts)
      data
    end

    # Create an index
    # Creates a new index. Returns the Index object passed in the request body when the request is successful.
    # @param body [LogsIndex] Object containing the new index.
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsIndex, Integer, Hash)>] LogsIndex data, response status code and response headers
    def create_logs_index_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_logs_index)
        unstable_enabled = @api_client.config.unstable_operations[:create_logs_index]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_logs_index")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_logs_index"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsIndexesAPI.create_logs_index ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsIndexesAPI.create_logs_index"
      end
      # resource path
      local_var_path = '/api/v1/logs/config/indexes'

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
      return_type = opts[:debug_return_type] || 'LogsIndex'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_logs_index,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsIndexesAPI#create_logs_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an index
    # Get one log index from your organization. This endpoint takes no JSON arguments.
    # @param name [String] Name of the log index.
    # @param opts [Hash] the optional parameters
    # @return [LogsIndex]
    def get_logs_index(name, opts = {})
      data, _status_code, _headers = get_logs_index_with_http_info(name, opts)
      data
    end

    # Get an index
    # Get one log index from your organization. This endpoint takes no JSON arguments.
    # @param name [String] Name of the log index.
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsIndex, Integer, Hash)>] LogsIndex data, response status code and response headers
    def get_logs_index_with_http_info(name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_logs_index)
        unstable_enabled = @api_client.config.unstable_operations[:get_logs_index]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_logs_index")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_logs_index"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsIndexesAPI.get_logs_index ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling LogsIndexesAPI.get_logs_index"
      end
      # resource path
      local_var_path = '/api/v1/logs/config/indexes/{name}'.sub('{name}', CGI.escape(name.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'LogsIndex'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_logs_index,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsIndexesAPI#get_logs_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get indexes order
    # Get the current order of your log indexes. This endpoint takes no JSON arguments.
    # @param opts [Hash] the optional parameters
    # @return [LogsIndexesOrder]
    def get_logs_index_order(opts = {})
      data, _status_code, _headers = get_logs_index_order_with_http_info(opts)
      data
    end

    # Get indexes order
    # Get the current order of your log indexes. This endpoint takes no JSON arguments.
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsIndexesOrder, Integer, Hash)>] LogsIndexesOrder data, response status code and response headers
    def get_logs_index_order_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_logs_index_order)
        unstable_enabled = @api_client.config.unstable_operations[:get_logs_index_order]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_logs_index_order")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_logs_index_order"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsIndexesAPI.get_logs_index_order ...'
      end
      # resource path
      local_var_path = '/api/v1/logs/config/index-order'

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
      return_type = opts[:debug_return_type] || 'LogsIndexesOrder'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_logs_index_order,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsIndexesAPI#get_logs_index_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all indexes
    # The Index object describes the configuration of a log index.
    # This endpoint returns an array of the `LogIndex` objects of your organization.
    # @param opts [Hash] the optional parameters
    # @return [LogsIndexListResponse]
    def list_log_indexes(opts = {})
      data, _status_code, _headers = list_log_indexes_with_http_info(opts)
      data
    end

    # Get all indexes
    # The Index object describes the configuration of a log index.
    # This endpoint returns an array of the `LogIndex` objects of your organization.
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsIndexListResponse, Integer, Hash)>] LogsIndexListResponse data, response status code and response headers
    def list_log_indexes_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_log_indexes)
        unstable_enabled = @api_client.config.unstable_operations[:list_log_indexes]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_log_indexes")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_log_indexes"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsIndexesAPI.list_log_indexes ...'
      end
      # resource path
      local_var_path = '/api/v1/logs/config/indexes'

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
      return_type = opts[:debug_return_type] || 'LogsIndexListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_log_indexes,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsIndexesAPI#list_log_indexes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an index
    # Update an index as identified by its name.
    # Returns the Index object passed in the request body when the request is successful.
    # 
    # Using the `PUT` method updates your index’s configuration by **replacing**
    # your current configuration with the new one sent to your Datadog organization.
    # @param name [String] Name of the log index.
    # @param body [LogsIndexUpdateRequest] Object containing the new `LogsIndexUpdateRequest`.
    # @param opts [Hash] the optional parameters
    # @return [LogsIndex]
    def update_logs_index(name, body, opts = {})
      data, _status_code, _headers = update_logs_index_with_http_info(name, body, opts)
      data
    end

    # Update an index
    # Update an index as identified by its name.
    # Returns the Index object passed in the request body when the request is successful.
    # 
    # Using the `PUT` method updates your index’s configuration by **replacing**
    # your current configuration with the new one sent to your Datadog organization.
    # @param name [String] Name of the log index.
    # @param body [LogsIndexUpdateRequest] Object containing the new `LogsIndexUpdateRequest`.
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsIndex, Integer, Hash)>] LogsIndex data, response status code and response headers
    def update_logs_index_with_http_info(name, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_logs_index)
        unstable_enabled = @api_client.config.unstable_operations[:update_logs_index]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_logs_index")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_logs_index"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsIndexesAPI.update_logs_index ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling LogsIndexesAPI.update_logs_index"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsIndexesAPI.update_logs_index"
      end
      # resource path
      local_var_path = '/api/v1/logs/config/indexes/{name}'.sub('{name}', CGI.escape(name.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'LogsIndex'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_logs_index,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsIndexesAPI#update_logs_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update indexes order
    # This endpoint updates the index order of your organization.
    # It returns the index order object passed in the request body when the request is successful.
    # @param body [LogsIndexesOrder] Object containing the new ordered list of index names
    # @param opts [Hash] the optional parameters
    # @return [LogsIndexesOrder]
    def update_logs_index_order(body, opts = {})
      data, _status_code, _headers = update_logs_index_order_with_http_info(body, opts)
      data
    end

    # Update indexes order
    # This endpoint updates the index order of your organization.
    # It returns the index order object passed in the request body when the request is successful.
    # @param body [LogsIndexesOrder] Object containing the new ordered list of index names
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsIndexesOrder, Integer, Hash)>] LogsIndexesOrder data, response status code and response headers
    def update_logs_index_order_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_logs_index_order)
        unstable_enabled = @api_client.config.unstable_operations[:update_logs_index_order]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_logs_index_order")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_logs_index_order"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsIndexesAPI.update_logs_index_order ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsIndexesAPI.update_logs_index_order"
      end
      # resource path
      local_var_path = '/api/v1/logs/config/index-order'

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
      return_type = opts[:debug_return_type] || 'LogsIndexesOrder'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_logs_index_order,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsIndexesAPI#update_logs_index_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
