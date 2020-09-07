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
  class GCPIntegrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a GCP integration
    # Create a Datadog-GCP integration.
    # @param body [GCPAccount] Create a Datadog-GCP integration.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def create_gcp_integration(body, opts = {})
      data, _status_code, _headers = create_gcp_integration_with_http_info(body, opts)
      data
    end

    # Create a GCP integration
    # Create a Datadog-GCP integration.
    # @param body [GCPAccount] Create a Datadog-GCP integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_gcp_integration_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GCPIntegrationApi.create_gcp_integration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling GCPIntegrationApi.create_gcp_integration"
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
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GCPIntegrationApi#create_gcp_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a GCP integration
    # Delete a given Datadog-GCP integration.
    # @param body [GCPAccount] Delete a given Datadog-GCP integration.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_gcp_integration(body, opts = {})
      data, _status_code, _headers = delete_gcp_integration_with_http_info(body, opts)
      data
    end

    # Delete a GCP integration
    # Delete a given Datadog-GCP integration.
    # @param body [GCPAccount] Delete a given Datadog-GCP integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_gcp_integration_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GCPIntegrationApi.delete_gcp_integration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling GCPIntegrationApi.delete_gcp_integration"
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
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GCPIntegrationApi#delete_gcp_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all GCP integrations
    # List all Datadog-GCP integrations configured in your Datadog account.
    # @param [Hash] opts the optional parameters
    # @return [Array<GCPAccount>]
    def list_gcp_integration(opts = {})
      data, _status_code, _headers = list_gcp_integration_with_http_info(opts)
      data
    end

    # List all GCP integrations
    # List all Datadog-GCP integrations configured in your Datadog account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GCPAccount>, Integer, Hash)>] Array<GCPAccount> data, response status code and response headers
    def list_gcp_integration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GCPIntegrationApi.list_gcp_integration ...'
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
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<GCPAccount>' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GCPIntegrationApi#list_gcp_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a GCP integration
    # Update a Datadog-GCP integrations host_filters and/or auto-mute. Requires a `project_id` and `client_email`, however these fields cannot be updated. If you need to update these fields, delete and use the create (`POST`) endpoint. The unspecified fields will keep their original values.
    # @param body [GCPAccount] Update a Datadog-GCP integration.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def update_gcp_integration(body, opts = {})
      data, _status_code, _headers = update_gcp_integration_with_http_info(body, opts)
      data
    end

    # Update a GCP integration
    # Update a Datadog-GCP integrations host_filters and/or auto-mute. Requires a &#x60;project_id&#x60; and &#x60;client_email&#x60;, however these fields cannot be updated. If you need to update these fields, delete and use the create (&#x60;POST&#x60;) endpoint. The unspecified fields will keep their original values.
    # @param body [GCPAccount] Update a Datadog-GCP integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_gcp_integration_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GCPIntegrationApi.update_gcp_integration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling GCPIntegrationApi.update_gcp_integration"
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
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GCPIntegrationApi#update_gcp_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
