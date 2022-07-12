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
    # Creates an API key with a given name.
    #
    # @param body [ApiKey] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApiKeyResponse, Integer, Hash)>] ApiKeyResponse data, response status code and response headers
    def create_api_key_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_api_key)
        unstable_enabled = @api_client.config.unstable_operations[:create_api_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_api_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_api_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyManagementAPI.create_api_key ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling KeyManagementAPI.create_api_key"
      end
      # resource path
      local_var_path = '/api/v1/api_key'

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
      return_type = opts[:debug_return_type] || 'ApiKeyResponse'

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
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Post, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeyManagementAPI#create_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an application key.
    #
    # @see #create_application_key_with_http_info
    def create_application_key(body, opts = {})
      data, _status_code, _headers = create_application_key_with_http_info(body, opts)
      data
    end

    # Create an application key.
    #
    # Create an application key with a given name.
    #
    # @param body [ApplicationKey] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApplicationKeyResponse, Integer, Hash)>] ApplicationKeyResponse data, response status code and response headers
    def create_application_key_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_application_key)
        unstable_enabled = @api_client.config.unstable_operations[:create_application_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_application_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_application_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyManagementAPI.create_application_key ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling KeyManagementAPI.create_application_key"
      end
      # resource path
      local_var_path = '/api/v1/application_key'

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
        :operation => :create_application_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#create_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an API key.
    #
    # @see #delete_api_key_with_http_info
    def delete_api_key(key, opts = {})
      data, _status_code, _headers = delete_api_key_with_http_info(key, opts)
      data
    end

    # Delete an API key.
    #
    # Delete a given API key.
    #
    # @param key [String] The specific API key you are working with.
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApiKeyResponse, Integer, Hash)>] ApiKeyResponse data, response status code and response headers
    def delete_api_key_with_http_info(key, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_api_key)
        unstable_enabled = @api_client.config.unstable_operations[:delete_api_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_api_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "delete_api_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyManagementAPI.delete_api_key ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling KeyManagementAPI.delete_api_key"
      end
      # resource path
      local_var_path = '/api/v1/api_key/{key}'.sub('{key}', CGI.escape(key.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'ApiKeyResponse'

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
        :api_version => "V1"
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
    def delete_application_key(key, opts = {})
      data, _status_code, _headers = delete_application_key_with_http_info(key, opts)
      data
    end

    # Delete an application key.
    #
    # Delete a given application key.
    #
    # @param key [String] The specific APP key you are working with.
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApplicationKeyResponse, Integer, Hash)>] ApplicationKeyResponse data, response status code and response headers
    def delete_application_key_with_http_info(key, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_application_key)
        unstable_enabled = @api_client.config.unstable_operations[:delete_application_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_application_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "delete_application_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyManagementAPI.delete_application_key ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling KeyManagementAPI.delete_application_key"
      end
      # resource path
      local_var_path = '/api/v1/application_key/{key}'.sub('{key}', CGI.escape(key.to_s).gsub('%2F', '/'))

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
        :operation => :delete_application_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#delete_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get API key.
    #
    # @see #get_api_key_with_http_info
    def get_api_key(key, opts = {})
      data, _status_code, _headers = get_api_key_with_http_info(key, opts)
      data
    end

    # Get API key.
    #
    # Get a given API key.
    #
    # @param key [String] The specific API key you are working with.
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApiKeyResponse, Integer, Hash)>] ApiKeyResponse data, response status code and response headers
    def get_api_key_with_http_info(key, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_api_key)
        unstable_enabled = @api_client.config.unstable_operations[:get_api_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_api_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_api_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyManagementAPI.get_api_key ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling KeyManagementAPI.get_api_key"
      end
      # resource path
      local_var_path = '/api/v1/api_key/{key}'.sub('{key}', CGI.escape(key.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'ApiKeyResponse'

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
        :api_version => "V1"
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
    def get_application_key(key, opts = {})
      data, _status_code, _headers = get_application_key_with_http_info(key, opts)
      data
    end

    # Get an application key.
    #
    # Get a given application key.
    #
    # @param key [String] The specific APP key you are working with.
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApplicationKeyResponse, Integer, Hash)>] ApplicationKeyResponse data, response status code and response headers
    def get_application_key_with_http_info(key, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_application_key)
        unstable_enabled = @api_client.config.unstable_operations[:get_application_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_application_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_application_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyManagementAPI.get_application_key ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling KeyManagementAPI.get_application_key"
      end
      # resource path
      local_var_path = '/api/v1/application_key/{key}'.sub('{key}', CGI.escape(key.to_s).gsub('%2F', '/'))

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
        :operation => :get_application_key,
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
        @api_client.config.logger.debug "API called: KeyManagementAPI#get_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    # Get all API keys available for your account.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApiKeyListResponse, Integer, Hash)>] ApiKeyListResponse data, response status code and response headers
    def list_api_keys_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_api_keys)
        unstable_enabled = @api_client.config.unstable_operations[:list_api_keys]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_api_keys")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_api_keys"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyManagementAPI.list_api_keys ...'
      end
      # resource path
      local_var_path = '/api/v1/api_key'

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
      return_type = opts[:debug_return_type] || 'ApiKeyListResponse'

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
        :api_version => "V1"
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
    # Get all application keys available for your Datadog account.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApplicationKeyListResponse, Integer, Hash)>] ApplicationKeyListResponse data, response status code and response headers
    def list_application_keys_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_application_keys)
        unstable_enabled = @api_client.config.unstable_operations[:list_application_keys]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_application_keys")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_application_keys"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyManagementAPI.list_application_keys ...'
      end
      # resource path
      local_var_path = '/api/v1/application_key'

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
      return_type = opts[:debug_return_type] || 'ApplicationKeyListResponse'

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
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeyManagementAPI#list_application_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an API key.
    #
    # @see #update_api_key_with_http_info
    def update_api_key(key, body, opts = {})
      data, _status_code, _headers = update_api_key_with_http_info(key, body, opts)
      data
    end

    # Edit an API key.
    #
    # Edit an API key name.
    #
    # @param key [String] The specific API key you are working with.
    # @param body [ApiKey] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApiKeyResponse, Integer, Hash)>] ApiKeyResponse data, response status code and response headers
    def update_api_key_with_http_info(key, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_api_key)
        unstable_enabled = @api_client.config.unstable_operations[:update_api_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_api_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_api_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyManagementAPI.update_api_key ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling KeyManagementAPI.update_api_key"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling KeyManagementAPI.update_api_key"
      end
      # resource path
      local_var_path = '/api/v1/api_key/{key}'.sub('{key}', CGI.escape(key.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'ApiKeyResponse'

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
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Put, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeyManagementAPI#update_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an application key.
    #
    # @see #update_application_key_with_http_info
    def update_application_key(key, body, opts = {})
      data, _status_code, _headers = update_application_key_with_http_info(key, body, opts)
      data
    end

    # Edit an application key.
    #
    # Edit an application key name.
    #
    # @param key [String] The specific APP key you are working with.
    # @param body [ApplicationKey] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(ApplicationKeyResponse, Integer, Hash)>] ApplicationKeyResponse data, response status code and response headers
    def update_application_key_with_http_info(key, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_application_key)
        unstable_enabled = @api_client.config.unstable_operations[:update_application_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_application_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_application_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyManagementAPI.update_application_key ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling KeyManagementAPI.update_application_key"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling KeyManagementAPI.update_application_key"
      end
      # resource path
      local_var_path = '/api/v1/application_key/{key}'.sub('{key}', CGI.escape(key.to_s).gsub('%2F', '/'))

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
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Put, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeyManagementAPI#update_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
