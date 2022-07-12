=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V1
  class GCPIntegrationAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Create a GCP integration.
    #
    # @see #create_gcp_integration_with_http_info
    def create_gcp_integration(body, opts = {})
      data, _status_code, _headers = create_gcp_integration_with_http_info(body, opts)
      data
    end

    # Create a GCP integration.
    #
    # Create a Datadog-GCP integration.
    #
    # @param body [GCPAccount] Create a Datadog-GCP integration.
    # @param opts [Hash] the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_gcp_integration_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_gcp_integration)
        unstable_enabled = @api_client.config.unstable_operations[:create_gcp_integration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_gcp_integration")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_gcp_integration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GCPIntegrationAPI.create_gcp_integration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling GCPIntegrationAPI.create_gcp_integration"
      end
      # resource path
      local_var_path = '/api/v1/integration/gcp'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_gcp_integration,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Post, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GCPIntegrationAPI#create_gcp_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a GCP integration.
    #
    # @see #delete_gcp_integration_with_http_info
    def delete_gcp_integration(body, opts = {})
      data, _status_code, _headers = delete_gcp_integration_with_http_info(body, opts)
      data
    end

    # Delete a GCP integration.
    #
    # Delete a given Datadog-GCP integration.
    #
    # @param body [GCPAccount] Delete a given Datadog-GCP integration.
    # @param opts [Hash] the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_gcp_integration_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_gcp_integration)
        unstable_enabled = @api_client.config.unstable_operations[:delete_gcp_integration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_gcp_integration")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "delete_gcp_integration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GCPIntegrationAPI.delete_gcp_integration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling GCPIntegrationAPI.delete_gcp_integration"
      end
      # resource path
      local_var_path = '/api/v1/integration/gcp'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_gcp_integration,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Delete, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GCPIntegrationAPI#delete_gcp_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all GCP integrations.
    #
    # @see #list_gcp_integration_with_http_info
    def list_gcp_integration(opts = {})
      data, _status_code, _headers = list_gcp_integration_with_http_info(opts)
      data
    end

    # List all GCP integrations.
    #
    # List all Datadog-GCP integrations configured in your Datadog account.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(Array<GCPAccount>, Integer, Hash)>] Array<GCPAccount> data, response status code and response headers
    def list_gcp_integration_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_gcp_integration)
        unstable_enabled = @api_client.config.unstable_operations[:list_gcp_integration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_gcp_integration")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_gcp_integration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GCPIntegrationAPI.list_gcp_integration ...'
      end
      # resource path
      local_var_path = '/api/v1/integration/gcp'

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
      return_type = opts[:debug_return_type] || 'Array<GCPAccount>'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_gcp_integration,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GCPIntegrationAPI#list_gcp_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a GCP integration.
    #
    # @see #update_gcp_integration_with_http_info
    def update_gcp_integration(body, opts = {})
      data, _status_code, _headers = update_gcp_integration_with_http_info(body, opts)
      data
    end

    # Update a GCP integration.
    #
    # Update a Datadog-GCP integrations host_filters and/or auto-mute.
    # Requires a `project_id` and `client_email`, however these fields cannot be updated.
    # If you need to update these fields, delete and use the create (`POST`) endpoint.
    # The unspecified fields will keep their original values.
    #
    # @param body [GCPAccount] Update a Datadog-GCP integration.
    # @param opts [Hash] the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_gcp_integration_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_gcp_integration)
        unstable_enabled = @api_client.config.unstable_operations[:update_gcp_integration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_gcp_integration")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_gcp_integration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GCPIntegrationAPI.update_gcp_integration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling GCPIntegrationAPI.update_gcp_integration"
      end
      # resource path
      local_var_path = '/api/v1/integration/gcp'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_gcp_integration,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Put, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GCPIntegrationAPI#update_gcp_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
