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
  class DORAMetricsAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Send a deployment event for DORA Metrics.
    #
    # @see #create_dora_deployment_with_http_info
    def create_dora_deployment(body, opts = {})
      data, _status_code, _headers = create_dora_deployment_with_http_info(body, opts)
      data
    end

    # Send a deployment event for DORA Metrics.
    #
    # Use this API endpoint to provide data about deployments for DORA metrics.
    #
    # This is necessary for:
    # - Deployment Frequency
    # - Change Lead Time
    # - Change Failure Rate
    #
    # @param body [DORADeploymentRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(DORADeploymentResponse, Integer, Hash)>] DORADeploymentResponse data, response status code and response headers
    def create_dora_deployment_with_http_info(body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.create_dora_deployment".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.create_dora_deployment")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.create_dora_deployment"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DORAMetricsAPI.create_dora_deployment ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DORAMetricsAPI.create_dora_deployment"
      end
      # resource path
      local_var_path = '/api/v2/dora/deployment'

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
      return_type = opts[:debug_return_type] || 'DORADeploymentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth]

      new_options = opts.merge(
        :operation => :create_dora_deployment,
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
        @api_client.config.logger.debug "API called: DORAMetricsAPI#create_dora_deployment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send an incident event for DORA Metrics.
    #
    # @see #create_dora_incident_with_http_info
    def create_dora_incident(body, opts = {})
      data, _status_code, _headers = create_dora_incident_with_http_info(body, opts)
      data
    end

    # Send an incident event for DORA Metrics.
    #
    # Use this API endpoint to provide data about incidents for DORA metrics.
    #
    # This is necessary for:
    # - Change Failure Rate
    # - Time to Restore
    #
    # @param body [DORAIncidentRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(DORAIncidentResponse, Integer, Hash)>] DORAIncidentResponse data, response status code and response headers
    def create_dora_incident_with_http_info(body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.create_dora_incident".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.create_dora_incident")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.create_dora_incident"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DORAMetricsAPI.create_dora_incident ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DORAMetricsAPI.create_dora_incident"
      end
      # resource path
      local_var_path = '/api/v2/dora/incident'

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
      return_type = opts[:debug_return_type] || 'DORAIncidentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth]

      new_options = opts.merge(
        :operation => :create_dora_incident,
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
        @api_client.config.logger.debug "API called: DORAMetricsAPI#create_dora_incident\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end