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
  class KeyManagementAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Create an API key.
    #
    # @see #create_api_key_with_http_info
    def create_api_key(body, opts = {})
      data, _status_code, _headers = create_api_key_with_http_info(body, opts)
      data
    end

    # Create an API key.
    #
    # Create an API key.
    #
    # @param body [APIKeyCreateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(APIKeyResponse, Integer, Hash)>] APIKeyResponse data, response status code and response headers
    def create_api_key_with_http_info(body, opts = {})
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling KeyManagementAPI.create_api_key"
      end
      # resource path
      local_var_path = '/api/v2/api_keys'

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
      return_type = opts[:debug_return_type] || 'APIKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_api_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#create_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an application key for current user.
    #
    # @see #create_current_user_application_key_with_http_info
    def create_current_user_application_key(body, opts = {})
      data, _status_code, _headers = create_current_user_application_key_with_http_info(body, opts)
      data
    end

    # Create an application key for current user.
    #
    # Create an application key for current user
    #
    # @param body [ApplicationKeyCreateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApplicationKeyResponse, Integer, Hash)>] ApplicationKeyResponse data, response status code and response headers
    def create_current_user_application_key_with_http_info(body, opts = {})
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling KeyManagementAPI.create_current_user_application_key"
      end
      # resource path
      local_var_path = '/api/v2/current_user/application_keys'

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
      return_type = opts[:debug_return_type] || 'ApplicationKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_current_user_application_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#create_current_user_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an API key.
    #
    # @see #delete_api_key_with_http_info
    def delete_api_key(api_key_id, opts = {})
      delete_api_key_with_http_info(api_key_id, opts)
      nil
    end

    # Delete an API key.
    #
    # Delete an API key.
    #
    # @param api_key_id [String] The ID of the API key.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_api_key_with_http_info(api_key_id, opts = {})
      # verify the required parameter 'api_key_id' is set
      if @api_client.config.client_side_validation && api_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_id' when calling KeyManagementAPI.delete_api_key"
      end
      # resource path
      local_var_path = '/api/v2/api_keys/{api_key_id}'.sub('{api_key_id}', CGI.escape(api_key_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_api_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#delete_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an application key.
    #
    # @see #delete_application_key_with_http_info
    def delete_application_key(app_key_id, opts = {})
      delete_application_key_with_http_info(app_key_id, opts)
      nil
    end

    # Delete an application key.
    #
    # Delete an application key
    #
    # @param app_key_id [String] The ID of the application key.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_application_key_with_http_info(app_key_id, opts = {})
      # verify the required parameter 'app_key_id' is set
      if @api_client.config.client_side_validation && app_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_key_id' when calling KeyManagementAPI.delete_application_key"
      end
      # resource path
      local_var_path = '/api/v2/application_keys/{app_key_id}'.sub('{app_key_id}', CGI.escape(app_key_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_application_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#delete_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an application key owned by current user.
    #
    # @see #delete_current_user_application_key_with_http_info
    def delete_current_user_application_key(app_key_id, opts = {})
      delete_current_user_application_key_with_http_info(app_key_id, opts)
      nil
    end

    # Delete an application key owned by current user.
    #
    # Delete an application key owned by current user
    #
    # @param app_key_id [String] The ID of the application key.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_current_user_application_key_with_http_info(app_key_id, opts = {})
      # verify the required parameter 'app_key_id' is set
      if @api_client.config.client_side_validation && app_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_key_id' when calling KeyManagementAPI.delete_current_user_application_key"
      end
      # resource path
      local_var_path = '/api/v2/current_user/application_keys/{app_key_id}'.sub('{app_key_id}', CGI.escape(app_key_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_current_user_application_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#delete_current_user_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get API key.
    #
    # @see #get_api_key_with_http_info
    def get_api_key(api_key_id, opts = {})
      data, _status_code, _headers = get_api_key_with_http_info(api_key_id, opts)
      data
    end

    # Get API key.
    #
    # Get an API key.
    #
    # @param api_key_id [String] The ID of the API key.
    # @param opts [Hash] the optional parameters
    # @option opts [String] :include Comma separated list of resource paths for related resources to include in the response. Supported resource paths are `created_by` and `modified_by`.
    # @return [Array<(APIKeyResponse, Integer, Hash)>] APIKeyResponse data, response status code and response headers
    def get_api_key_with_http_info(api_key_id, opts = {})
      # verify the required parameter 'api_key_id' is set
      if @api_client.config.client_side_validation && api_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_id' when calling KeyManagementAPI.get_api_key"
      end
      # resource path
      local_var_path = '/api/v2/api_keys/{api_key_id}'.sub('{api_key_id}', CGI.escape(api_key_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_api_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#get_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an application key.
    #
    # @see #get_application_key_with_http_info
    def get_application_key(app_key_id, opts = {})
      data, _status_code, _headers = get_application_key_with_http_info(app_key_id, opts)
      data
    end

    # Get an application key.
    #
    # Get an application key for your org.
    #
    # @param app_key_id [String] The ID of the application key.
    # @param opts [Hash] the optional parameters
    # @option opts [String] :include Resource path for related resources to include in the response. Only `owned_by` is supported.
    # @return [Array<(ApplicationKeyResponse, Integer, Hash)>] ApplicationKeyResponse data, response status code and response headers
    def get_application_key_with_http_info(app_key_id, opts = {})
      # verify the required parameter 'app_key_id' is set
      if @api_client.config.client_side_validation && app_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_key_id' when calling KeyManagementAPI.get_application_key"
      end
      # resource path
      local_var_path = '/api/v2/application_keys/{app_key_id}'.sub('{app_key_id}', CGI.escape(app_key_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicationKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_application_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#get_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get one application key owned by current user.
    #
    # @see #get_current_user_application_key_with_http_info
    def get_current_user_application_key(app_key_id, opts = {})
      data, _status_code, _headers = get_current_user_application_key_with_http_info(app_key_id, opts)
      data
    end

    # Get one application key owned by current user.
    #
    # Get an application key owned by current user
    #
    # @param app_key_id [String] The ID of the application key.
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApplicationKeyResponse, Integer, Hash)>] ApplicationKeyResponse data, response status code and response headers
    def get_current_user_application_key_with_http_info(app_key_id, opts = {})
      # verify the required parameter 'app_key_id' is set
      if @api_client.config.client_side_validation && app_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_key_id' when calling KeyManagementAPI.get_current_user_application_key"
      end
      # resource path
      local_var_path = '/api/v2/current_user/application_keys/{app_key_id}'.sub('{app_key_id}', CGI.escape(app_key_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'ApplicationKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_current_user_application_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#get_current_user_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all API keys.
    #
    # @see #list_api_keys_with_http_info
    def list_api_keys(opts = {})
      data, _status_code, _headers = list_api_keys_with_http_info(opts)
      data
    end

    # Get all API keys.
    #
    # List all API keys available for your account.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_number Specific page number to return.
    # @option opts [APIKeysSort] :sort API key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.
    # @option opts [String] :filter Filter API keys by the specified string.
    # @option opts [String] :filter_created_at_start Only include API keys created on or after the specified date.
    # @option opts [String] :filter_created_at_end Only include API keys created on or before the specified date.
    # @option opts [String] :filter_modified_at_start Only include API keys modified on or after the specified date.
    # @option opts [String] :filter_modified_at_end Only include API keys modified on or before the specified date.
    # @option opts [String] :include Comma separated list of resource paths for related resources to include in the response. Supported resource paths are `created_by` and `modified_by`.
    # @return [Array<(APIKeysResponse, Integer, Hash)>] APIKeysResponse data, response status code and response headers
    def list_api_keys_with_http_info(opts = {})
      allowable_values = ['created_at', '-created_at', 'last4', '-last4', 'modified_at', '-modified_at', 'name', '-name']
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v2/api_keys'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'filter[created_at][start]'] = opts[:'filter_created_at_start'] if !opts[:'filter_created_at_start'].nil?
      query_params[:'filter[created_at][end]'] = opts[:'filter_created_at_end'] if !opts[:'filter_created_at_end'].nil?
      query_params[:'filter[modified_at][start]'] = opts[:'filter_modified_at_start'] if !opts[:'filter_modified_at_start'].nil?
      query_params[:'filter[modified_at][end]'] = opts[:'filter_modified_at_end'] if !opts[:'filter_modified_at_end'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIKeysResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_api_keys,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#list_api_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all application keys.
    #
    # @see #list_application_keys_with_http_info
    def list_application_keys(opts = {})
      data, _status_code, _headers = list_application_keys_with_http_info(opts)
      data
    end

    # Get all application keys.
    #
    # List all application keys available for your org
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_number Specific page number to return.
    # @option opts [ApplicationKeysSort] :sort Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.
    # @option opts [String] :filter Filter application keys by the specified string.
    # @option opts [String] :filter_created_at_start Only include application keys created on or after the specified date.
    # @option opts [String] :filter_created_at_end Only include application keys created on or before the specified date.
    # @return [Array<(ListApplicationKeysResponse, Integer, Hash)>] ListApplicationKeysResponse data, response status code and response headers
    def list_application_keys_with_http_info(opts = {})
      allowable_values = ['created_at', '-created_at', 'last4', '-last4', 'name', '-name']
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v2/application_keys'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'filter[created_at][start]'] = opts[:'filter_created_at_start'] if !opts[:'filter_created_at_start'].nil?
      query_params[:'filter[created_at][end]'] = opts[:'filter_created_at_end'] if !opts[:'filter_created_at_end'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListApplicationKeysResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_application_keys,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#list_application_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all application keys owned by current user.
    #
    # @see #list_current_user_application_keys_with_http_info
    def list_current_user_application_keys(opts = {})
      data, _status_code, _headers = list_current_user_application_keys_with_http_info(opts)
      data
    end

    # Get all application keys owned by current user.
    #
    # List all application keys available for current user
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_number Specific page number to return.
    # @option opts [ApplicationKeysSort] :sort Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.
    # @option opts [String] :filter Filter application keys by the specified string.
    # @option opts [String] :filter_created_at_start Only include application keys created on or after the specified date.
    # @option opts [String] :filter_created_at_end Only include application keys created on or before the specified date.
    # @return [Array<(ListApplicationKeysResponse, Integer, Hash)>] ListApplicationKeysResponse data, response status code and response headers
    def list_current_user_application_keys_with_http_info(opts = {})
      allowable_values = ['created_at', '-created_at', 'last4', '-last4', 'name', '-name']
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v2/current_user/application_keys'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'filter[created_at][start]'] = opts[:'filter_created_at_start'] if !opts[:'filter_created_at_start'].nil?
      query_params[:'filter[created_at][end]'] = opts[:'filter_created_at_end'] if !opts[:'filter_created_at_end'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListApplicationKeysResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_current_user_application_keys,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#list_current_user_application_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an API key.
    #
    # @see #update_api_key_with_http_info
    def update_api_key(api_key_id, body, opts = {})
      data, _status_code, _headers = update_api_key_with_http_info(api_key_id, body, opts)
      data
    end

    # Edit an API key.
    #
    # Update an API key.
    #
    # @param api_key_id [String] The ID of the API key.
    # @param body [APIKeyUpdateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(APIKeyResponse, Integer, Hash)>] APIKeyResponse data, response status code and response headers
    def update_api_key_with_http_info(api_key_id, body, opts = {})
      # verify the required parameter 'api_key_id' is set
      if @api_client.config.client_side_validation && api_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_id' when calling KeyManagementAPI.update_api_key"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling KeyManagementAPI.update_api_key"
      end
      # resource path
      local_var_path = '/api/v2/api_keys/{api_key_id}'.sub('{api_key_id}', CGI.escape(api_key_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'APIKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_api_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#update_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an application key.
    #
    # @see #update_application_key_with_http_info
    def update_application_key(app_key_id, body, opts = {})
      data, _status_code, _headers = update_application_key_with_http_info(app_key_id, body, opts)
      data
    end

    # Edit an application key.
    #
    # Edit an application key
    #
    # @param app_key_id [String] The ID of the application key.
    # @param body [ApplicationKeyUpdateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApplicationKeyResponse, Integer, Hash)>] ApplicationKeyResponse data, response status code and response headers
    def update_application_key_with_http_info(app_key_id, body, opts = {})
      # verify the required parameter 'app_key_id' is set
      if @api_client.config.client_side_validation && app_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_key_id' when calling KeyManagementAPI.update_application_key"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling KeyManagementAPI.update_application_key"
      end
      # resource path
      local_var_path = '/api/v2/application_keys/{app_key_id}'.sub('{app_key_id}', CGI.escape(app_key_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'ApplicationKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_application_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#update_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an application key owned by current user.
    #
    # @see #update_current_user_application_key_with_http_info
    def update_current_user_application_key(app_key_id, body, opts = {})
      data, _status_code, _headers = update_current_user_application_key_with_http_info(app_key_id, body, opts)
      data
    end

    # Edit an application key owned by current user.
    #
    # Edit an application key owned by current user
    #
    # @param app_key_id [String] The ID of the application key.
    # @param body [ApplicationKeyUpdateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApplicationKeyResponse, Integer, Hash)>] ApplicationKeyResponse data, response status code and response headers
    def update_current_user_application_key_with_http_info(app_key_id, body, opts = {})
      # verify the required parameter 'app_key_id' is set
      if @api_client.config.client_side_validation && app_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_key_id' when calling KeyManagementAPI.update_current_user_application_key"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling KeyManagementAPI.update_current_user_application_key"
      end
      # resource path
      local_var_path = '/api/v2/current_user/application_keys/{app_key_id}'.sub('{app_key_id}', CGI.escape(app_key_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'ApplicationKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_current_user_application_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#update_current_user_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
