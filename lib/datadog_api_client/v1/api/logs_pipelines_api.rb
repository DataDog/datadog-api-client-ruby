=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'cgi'

module DatadogAPIClient::V1
  class LogsPipelinesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a pipeline
    # Create a pipeline in your organization.
    # @param body [LogsPipeline] Definition of the new pipeline.
    # @param [Hash] opts the optional parameters
    # @return [LogsPipeline]
    def create_logs_pipeline(body, opts = {})
      data, _status_code, _headers = create_logs_pipeline_with_http_info(body, opts)
      data
    end

    # Create a pipeline
    # Create a pipeline in your organization.
    # @param body [LogsPipeline] Definition of the new pipeline.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsPipeline, Integer, Hash)>] LogsPipeline data, response status code and response headers
    def create_logs_pipeline_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_logs_pipeline)
        unstable_enabled = @api_client.config.unstable_operations[:create_logs_pipeline]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_logs_pipeline")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "create_logs_pipeline"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsPipelinesApi.create_logs_pipeline ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsPipelinesApi.create_logs_pipeline"
      end
      # resource path
      local_var_path = '/api/v1/logs/config/pipelines'

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
      return_type = opts[:debug_return_type] || 'LogsPipeline'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"LogsPipelinesApi.create_logs_pipeline",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsPipelinesApi#create_logs_pipeline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a pipeline
    # Delete a given pipeline from your organization. This endpoint takes no JSON arguments.
    # @param pipeline_id [String] ID of the pipeline to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_logs_pipeline(pipeline_id, opts = {})
      delete_logs_pipeline_with_http_info(pipeline_id, opts)
      nil
    end

    # Delete a pipeline
    # Delete a given pipeline from your organization. This endpoint takes no JSON arguments.
    # @param pipeline_id [String] ID of the pipeline to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_logs_pipeline_with_http_info(pipeline_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_logs_pipeline)
        unstable_enabled = @api_client.config.unstable_operations[:delete_logs_pipeline]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_logs_pipeline")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "delete_logs_pipeline"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsPipelinesApi.delete_logs_pipeline ...'
      end
      # verify the required parameter 'pipeline_id' is set
      if @api_client.config.client_side_validation && pipeline_id.nil?
        fail ArgumentError, "Missing the required parameter 'pipeline_id' when calling LogsPipelinesApi.delete_logs_pipeline"
      end
      # resource path
      local_var_path = '/api/v1/logs/config/pipelines/{pipeline_id}'.sub('{' + 'pipeline_id' + '}', CGI.escape(pipeline_id.to_s))

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
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"LogsPipelinesApi.delete_logs_pipeline",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsPipelinesApi#delete_logs_pipeline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a pipeline
    # Get a specific pipeline from your organization. This endpoint takes no JSON arguments.
    # @param pipeline_id [String] ID of the pipeline to get.
    # @param [Hash] opts the optional parameters
    # @return [LogsPipeline]
    def get_logs_pipeline(pipeline_id, opts = {})
      data, _status_code, _headers = get_logs_pipeline_with_http_info(pipeline_id, opts)
      data
    end

    # Get a pipeline
    # Get a specific pipeline from your organization. This endpoint takes no JSON arguments.
    # @param pipeline_id [String] ID of the pipeline to get.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsPipeline, Integer, Hash)>] LogsPipeline data, response status code and response headers
    def get_logs_pipeline_with_http_info(pipeline_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_logs_pipeline)
        unstable_enabled = @api_client.config.unstable_operations[:get_logs_pipeline]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_logs_pipeline")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "get_logs_pipeline"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsPipelinesApi.get_logs_pipeline ...'
      end
      # verify the required parameter 'pipeline_id' is set
      if @api_client.config.client_side_validation && pipeline_id.nil?
        fail ArgumentError, "Missing the required parameter 'pipeline_id' when calling LogsPipelinesApi.get_logs_pipeline"
      end
      # resource path
      local_var_path = '/api/v1/logs/config/pipelines/{pipeline_id}'.sub('{' + 'pipeline_id' + '}', CGI.escape(pipeline_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LogsPipeline'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"LogsPipelinesApi.get_logs_pipeline",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsPipelinesApi#get_logs_pipeline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get pipeline order
    # Get the current order of your pipelines. This endpoint takes no JSON arguments.
    # @param [Hash] opts the optional parameters
    # @return [LogsPipelinesOrder]
    def get_logs_pipeline_order(opts = {})
      data, _status_code, _headers = get_logs_pipeline_order_with_http_info(opts)
      data
    end

    # Get pipeline order
    # Get the current order of your pipelines. This endpoint takes no JSON arguments.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsPipelinesOrder, Integer, Hash)>] LogsPipelinesOrder data, response status code and response headers
    def get_logs_pipeline_order_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_logs_pipeline_order)
        unstable_enabled = @api_client.config.unstable_operations[:get_logs_pipeline_order]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_logs_pipeline_order")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "get_logs_pipeline_order"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsPipelinesApi.get_logs_pipeline_order ...'
      end
      # resource path
      local_var_path = '/api/v1/logs/config/pipeline-order'

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
      return_type = opts[:debug_return_type] || 'LogsPipelinesOrder'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"LogsPipelinesApi.get_logs_pipeline_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsPipelinesApi#get_logs_pipeline_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all pipelines
    # Get all pipelines from your organization. This endpoint takes no JSON arguments.
    # @param [Hash] opts the optional parameters
    # @return [Array<LogsPipeline>]
    def list_logs_pipelines(opts = {})
      data, _status_code, _headers = list_logs_pipelines_with_http_info(opts)
      data
    end

    # Get all pipelines
    # Get all pipelines from your organization. This endpoint takes no JSON arguments.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LogsPipeline>, Integer, Hash)>] Array<LogsPipeline> data, response status code and response headers
    def list_logs_pipelines_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_logs_pipelines)
        unstable_enabled = @api_client.config.unstable_operations[:list_logs_pipelines]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_logs_pipelines")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "list_logs_pipelines"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsPipelinesApi.list_logs_pipelines ...'
      end
      # resource path
      local_var_path = '/api/v1/logs/config/pipelines'

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
      return_type = opts[:debug_return_type] || 'Array<LogsPipeline>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"LogsPipelinesApi.list_logs_pipelines",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsPipelinesApi#list_logs_pipelines\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a pipeline
    # Update a given pipeline configuration to change it’s processors or their order.  **Note**: Using this method updates your pipeline configuration by **replacing** your current configuration with the new one sent to your Datadog organization.
    # @param pipeline_id [String] ID of the pipeline to delete.
    # @param body [LogsPipeline] New definition of the pipeline.
    # @param [Hash] opts the optional parameters
    # @return [LogsPipeline]
    def update_logs_pipeline(pipeline_id, body, opts = {})
      data, _status_code, _headers = update_logs_pipeline_with_http_info(pipeline_id, body, opts)
      data
    end

    # Update a pipeline
    # Update a given pipeline configuration to change it’s processors or their order.  **Note**: Using this method updates your pipeline configuration by **replacing** your current configuration with the new one sent to your Datadog organization.
    # @param pipeline_id [String] ID of the pipeline to delete.
    # @param body [LogsPipeline] New definition of the pipeline.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsPipeline, Integer, Hash)>] LogsPipeline data, response status code and response headers
    def update_logs_pipeline_with_http_info(pipeline_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_logs_pipeline)
        unstable_enabled = @api_client.config.unstable_operations[:update_logs_pipeline]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_logs_pipeline")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "update_logs_pipeline"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsPipelinesApi.update_logs_pipeline ...'
      end
      # verify the required parameter 'pipeline_id' is set
      if @api_client.config.client_side_validation && pipeline_id.nil?
        fail ArgumentError, "Missing the required parameter 'pipeline_id' when calling LogsPipelinesApi.update_logs_pipeline"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsPipelinesApi.update_logs_pipeline"
      end
      # resource path
      local_var_path = '/api/v1/logs/config/pipelines/{pipeline_id}'.sub('{' + 'pipeline_id' + '}', CGI.escape(pipeline_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LogsPipeline'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"LogsPipelinesApi.update_logs_pipeline",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsPipelinesApi#update_logs_pipeline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update pipeline order
    # Update the order of your pipelines. Since logs are processed sequentially, reordering a pipeline may change the structure and content of the data processed by other pipelines and their processors.  **Note**: Using the `PUT` method updates your pipeline order by replacing your current order with the new one sent to your Datadog organization.
    # @param body [LogsPipelinesOrder] Object containing the new ordered list of pipeline IDs.
    # @param [Hash] opts the optional parameters
    # @return [LogsPipelinesOrder]
    def update_logs_pipeline_order(body, opts = {})
      data, _status_code, _headers = update_logs_pipeline_order_with_http_info(body, opts)
      data
    end

    # Update pipeline order
    # Update the order of your pipelines. Since logs are processed sequentially, reordering a pipeline may change the structure and content of the data processed by other pipelines and their processors.  **Note**: Using the &#x60;PUT&#x60; method updates your pipeline order by replacing your current order with the new one sent to your Datadog organization.
    # @param body [LogsPipelinesOrder] Object containing the new ordered list of pipeline IDs.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsPipelinesOrder, Integer, Hash)>] LogsPipelinesOrder data, response status code and response headers
    def update_logs_pipeline_order_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_logs_pipeline_order)
        unstable_enabled = @api_client.config.unstable_operations[:update_logs_pipeline_order]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_logs_pipeline_order")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "update_logs_pipeline_order"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsPipelinesApi.update_logs_pipeline_order ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsPipelinesApi.update_logs_pipeline_order"
      end
      # resource path
      local_var_path = '/api/v1/logs/config/pipeline-order'

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
      return_type = opts[:debug_return_type] || 'LogsPipelinesOrder'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"LogsPipelinesApi.update_logs_pipeline_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsPipelinesApi#update_logs_pipeline_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
