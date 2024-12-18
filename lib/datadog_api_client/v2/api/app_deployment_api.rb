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
  class AppDeploymentAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Deploy App.
    #
    # @see #deploy_app_with_http_info
    def deploy_app(app_id, opts = {})
      data, _status_code, _headers = deploy_app_with_http_info(app_id, opts)
      data
    end

    # Deploy App.
    #
    # Deploy (publish) an app by ID
    #
    # @param app_id [String] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(DeployAppResponse, Integer, Hash)>] DeployAppResponse data, response status code and response headers
    def deploy_app_with_http_info(app_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.deploy_app".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.deploy_app")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.deploy_app"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppDeploymentAPI.deploy_app ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppDeploymentAPI.deploy_app"
      end
      # resource path
      local_var_path = '/api/v2/app-builder/apps/{app_id}/deployment'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'DeployAppResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :deploy_app,
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
        @api_client.config.logger.debug "API called: AppDeploymentAPI#deploy_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable App.
    #
    # @see #disable_app_with_http_info
    def disable_app(app_id, opts = {})
      data, _status_code, _headers = disable_app_with_http_info(app_id, opts)
      data
    end

    # Disable App.
    #
    # Disable an app by ID
    #
    # @param app_id [String] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(DisableAppResponse, Integer, Hash)>] DisableAppResponse data, response status code and response headers
    def disable_app_with_http_info(app_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.disable_app".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.disable_app")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.disable_app"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppDeploymentAPI.disable_app ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppDeploymentAPI.disable_app"
      end
      # resource path
      local_var_path = '/api/v2/app-builder/apps/{app_id}/deployment'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'DisableAppResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :disable_app,
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
        @api_client.config.logger.debug "API called: AppDeploymentAPI#disable_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end