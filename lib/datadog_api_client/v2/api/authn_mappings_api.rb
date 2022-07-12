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
  class AuthNMappingsAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Create an AuthN Mapping.
    #
    # @see #create_authn_mapping_with_http_info
    def create_authn_mapping(body, opts = {})
      data, _status_code, _headers = create_authn_mapping_with_http_info(body, opts)
      data
    end

    # Create an AuthN Mapping.
    #
    # Create an AuthN Mapping.
    #
    # @param body [AuthNMappingCreateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(AuthNMappingResponse, Integer, Hash)>] AuthNMappingResponse data, response status code and response headers
    def create_authn_mapping_with_http_info(body, opts = {})
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthNMappingsAPI.create_authn_mapping"
      end
      # resource path
      local_var_path = '/api/v2/authn_mappings'

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
      return_type = opts[:debug_return_type] || 'AuthNMappingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_authn_mapping,
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
        @api_client.config.logger.debug "API called: AuthNMappingsAPI#create_authn_mapping\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an AuthN Mapping.
    #
    # @see #delete_authn_mapping_with_http_info
    def delete_authn_mapping(authn_mapping_id, opts = {})
      delete_authn_mapping_with_http_info(authn_mapping_id, opts)
      nil
    end

    # Delete an AuthN Mapping.
    #
    # Delete an AuthN Mapping specified by AuthN Mapping UUID.
    #
    # @param authn_mapping_id [String] The UUID of the AuthN Mapping.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_authn_mapping_with_http_info(authn_mapping_id, opts = {})
      # verify the required parameter 'authn_mapping_id' is set
      if @api_client.config.client_side_validation && authn_mapping_id.nil?
        fail ArgumentError, "Missing the required parameter 'authn_mapping_id' when calling AuthNMappingsAPI.delete_authn_mapping"
      end
      # resource path
      local_var_path = '/api/v2/authn_mappings/{authn_mapping_id}'.sub('{authn_mapping_id}', CGI.escape(authn_mapping_id.to_s).gsub('%2F', '/'))

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
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :delete_authn_mapping,
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
        @api_client.config.logger.debug "API called: AuthNMappingsAPI#delete_authn_mapping\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an AuthN Mapping by UUID.
    #
    # @see #get_authn_mapping_with_http_info
    def get_authn_mapping(authn_mapping_id, opts = {})
      data, _status_code, _headers = get_authn_mapping_with_http_info(authn_mapping_id, opts)
      data
    end

    # Get an AuthN Mapping by UUID.
    #
    # Get an AuthN Mapping specified by the AuthN Mapping UUID.
    #
    # @param authn_mapping_id [String] The UUID of the AuthN Mapping.
    # @param opts [Hash] the optional parameters
    # @return [Array<(AuthNMappingResponse, Integer, Hash)>] AuthNMappingResponse data, response status code and response headers
    def get_authn_mapping_with_http_info(authn_mapping_id, opts = {})
      # verify the required parameter 'authn_mapping_id' is set
      if @api_client.config.client_side_validation && authn_mapping_id.nil?
        fail ArgumentError, "Missing the required parameter 'authn_mapping_id' when calling AuthNMappingsAPI.get_authn_mapping"
      end
      # resource path
      local_var_path = '/api/v2/authn_mappings/{authn_mapping_id}'.sub('{authn_mapping_id}', CGI.escape(authn_mapping_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'AuthNMappingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_authn_mapping,
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
        @api_client.config.logger.debug "API called: AuthNMappingsAPI#get_authn_mapping\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all AuthN Mappings.
    #
    # @see #list_authn_mappings_with_http_info
    def list_authn_mappings(opts = {})
      data, _status_code, _headers = list_authn_mappings_with_http_info(opts)
      data
    end

    # List all AuthN Mappings.
    #
    # List all AuthN Mappings in the org.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_number Specific page number to return.
    # @option opts [AuthNMappingsSort] :sort Sort AuthN Mappings depending on the given field.
    # @option opts [String] :filter Filter all mappings by the given string.
    # @return [Array<(AuthNMappingsResponse, Integer, Hash)>] AuthNMappingsResponse data, response status code and response headers
    def list_authn_mappings_with_http_info(opts = {})
      allowable_values = ['created_at', '-created_at', 'role_id', '-role_id', 'saml_assertion_attribute_id', '-saml_assertion_attribute_id', 'role.name', '-role.name', 'saml_assertion_attribute.attribute_key', '-saml_assertion_attribute.attribute_key', 'saml_assertion_attribute.attribute_value', '-saml_assertion_attribute.attribute_value']
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v2/authn_mappings'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuthNMappingsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_authn_mappings,
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
        @api_client.config.logger.debug "API called: AuthNMappingsAPI#list_authn_mappings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an AuthN Mapping.
    #
    # @see #update_authn_mapping_with_http_info
    def update_authn_mapping(authn_mapping_id, body, opts = {})
      data, _status_code, _headers = update_authn_mapping_with_http_info(authn_mapping_id, body, opts)
      data
    end

    # Edit an AuthN Mapping.
    #
    # Edit an AuthN Mapping.
    #
    # @param authn_mapping_id [String] The UUID of the AuthN Mapping.
    # @param body [AuthNMappingUpdateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(AuthNMappingResponse, Integer, Hash)>] AuthNMappingResponse data, response status code and response headers
    def update_authn_mapping_with_http_info(authn_mapping_id, body, opts = {})
      # verify the required parameter 'authn_mapping_id' is set
      if @api_client.config.client_side_validation && authn_mapping_id.nil?
        fail ArgumentError, "Missing the required parameter 'authn_mapping_id' when calling AuthNMappingsAPI.update_authn_mapping"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthNMappingsAPI.update_authn_mapping"
      end
      # resource path
      local_var_path = '/api/v2/authn_mappings/{authn_mapping_id}'.sub('{authn_mapping_id}', CGI.escape(authn_mapping_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'AuthNMappingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :update_authn_mapping,
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
        @api_client.config.logger.debug "API called: AuthNMappingsAPI#update_authn_mapping\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
