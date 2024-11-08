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
  class DomainAllowlistAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Get Domain Allowlist.
    #
    # @see #get_domain_allowlist_with_http_info
    def get_domain_allowlist(opts = {})
      data, _status_code, _headers = get_domain_allowlist_with_http_info(opts)
      data
    end

    # Get Domain Allowlist.
    #
    # Get the domain allowlist for an organization.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(DomainAllowlistResponse, Integer, Hash)>] DomainAllowlistResponse data, response status code and response headers
    def get_domain_allowlist_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DomainAllowlistAPI.get_domain_allowlist ...'
      end
      # resource path
      local_var_path = '/api/v2/domain_allowlist'

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
      return_type = opts[:debug_return_type] || 'DomainAllowlistResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_domain_allowlist,
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
        @api_client.config.logger.debug "API called: DomainAllowlistAPI#get_domain_allowlist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sets Domain Allowlist.
    #
    # @see #patch_domain_allowlist_with_http_info
    def patch_domain_allowlist(body, opts = {})
      data, _status_code, _headers = patch_domain_allowlist_with_http_info(body, opts)
      data
    end

    # Sets Domain Allowlist.
    #
    # Update the domain allowlist for an organization.
    #
    # @param body [DomainAllowlistRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(DomainAllowlistResponse, Integer, Hash)>] DomainAllowlistResponse data, response status code and response headers
    def patch_domain_allowlist_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DomainAllowlistAPI.patch_domain_allowlist ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DomainAllowlistAPI.patch_domain_allowlist"
      end
      # resource path
      local_var_path = '/api/v2/domain_allowlist'

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
      return_type = opts[:debug_return_type] || 'DomainAllowlistResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :patch_domain_allowlist,
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
        @api_client.config.logger.debug "API called: DomainAllowlistAPI#patch_domain_allowlist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end