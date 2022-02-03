=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V2
  class ServiceAccountsAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Create an application key for this service account
    # Create an application key for this service account.
    # @param service_account_id [String] The ID of the service account.
    # @param body [ApplicationKeyCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicationKeyResponse]
    def create_service_account_application_key(service_account_id, body, opts = {})
      data, _status_code, _headers = create_service_account_application_key_with_http_info(service_account_id, body, opts)
      data
    end

    # Create an application key for this service account
    # Create an application key for this service account.
    # @param service_account_id [String] The ID of the service account.
    # @param body [ApplicationKeyCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationKeyResponse, Integer, Hash)>] ApplicationKeyResponse data, response status code and response headers
    def create_service_account_application_key_with_http_info(service_account_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_service_account_application_key)
        unstable_enabled = @api_client.config.unstable_operations[:create_service_account_application_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_service_account_application_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_service_account_application_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountsAPI.create_service_account_application_key ...'
      end
      # verify the required parameter 'service_account_id' is set
      if @api_client.config.client_side_validation && service_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_account_id' when calling ServiceAccountsAPI.create_service_account_application_key"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceAccountsAPI.create_service_account_application_key"
      end
      # resource path
      local_var_path = '/api/v2/service_accounts/{service_account_id}/application_keys'.sub('{service_account_id}', CGI.escape(service_account_id.to_s).gsub('%2F', '/'))

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
        :operation => :create_service_account_application_key,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountsAPI#create_service_account_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an application key for this service account
    # Delete an application key owned by this service account.
    # @param service_account_id [String] The ID of the service account.
    # @param app_key_id [String] The ID of the application key.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_service_account_application_key(service_account_id, app_key_id, opts = {})
      delete_service_account_application_key_with_http_info(service_account_id, app_key_id, opts)
      nil
    end

    # Delete an application key for this service account
    # Delete an application key owned by this service account.
    # @param service_account_id [String] The ID of the service account.
    # @param app_key_id [String] The ID of the application key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_service_account_application_key_with_http_info(service_account_id, app_key_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_service_account_application_key)
        unstable_enabled = @api_client.config.unstable_operations[:delete_service_account_application_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_service_account_application_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "delete_service_account_application_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountsAPI.delete_service_account_application_key ...'
      end
      # verify the required parameter 'service_account_id' is set
      if @api_client.config.client_side_validation && service_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_account_id' when calling ServiceAccountsAPI.delete_service_account_application_key"
      end
      # verify the required parameter 'app_key_id' is set
      if @api_client.config.client_side_validation && app_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_key_id' when calling ServiceAccountsAPI.delete_service_account_application_key"
      end
      # resource path
      local_var_path = '/api/v2/service_accounts/{service_account_id}/application_keys/{app_key_id}'.sub('{service_account_id}', CGI.escape(service_account_id.to_s).gsub('%2F', '/')).sub('{app_key_id}', CGI.escape(app_key_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_service_account_application_key,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountsAPI#delete_service_account_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get one application key for this service account
    # Get an application key owned by this service account.
    # @param service_account_id [String] The ID of the service account.
    # @param app_key_id [String] The ID of the application key.
    # @param [Hash] opts the optional parameters
    # @return [PartialApplicationKeyResponse]
    def get_service_account_application_key(service_account_id, app_key_id, opts = {})
      data, _status_code, _headers = get_service_account_application_key_with_http_info(service_account_id, app_key_id, opts)
      data
    end

    # Get one application key for this service account
    # Get an application key owned by this service account.
    # @param service_account_id [String] The ID of the service account.
    # @param app_key_id [String] The ID of the application key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PartialApplicationKeyResponse, Integer, Hash)>] PartialApplicationKeyResponse data, response status code and response headers
    def get_service_account_application_key_with_http_info(service_account_id, app_key_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_service_account_application_key)
        unstable_enabled = @api_client.config.unstable_operations[:get_service_account_application_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_service_account_application_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_service_account_application_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountsAPI.get_service_account_application_key ...'
      end
      # verify the required parameter 'service_account_id' is set
      if @api_client.config.client_side_validation && service_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_account_id' when calling ServiceAccountsAPI.get_service_account_application_key"
      end
      # verify the required parameter 'app_key_id' is set
      if @api_client.config.client_side_validation && app_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_key_id' when calling ServiceAccountsAPI.get_service_account_application_key"
      end
      # resource path
      local_var_path = '/api/v2/service_accounts/{service_account_id}/application_keys/{app_key_id}'.sub('{service_account_id}', CGI.escape(service_account_id.to_s).gsub('%2F', '/')).sub('{app_key_id}', CGI.escape(app_key_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'PartialApplicationKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_service_account_application_key,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountsAPI#get_service_account_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List application keys for this service account
    # List all application keys available for this service account.
    # @param service_account_id [String] The ID of the service account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_number Specific page number to return.
    # @option opts [ApplicationKeysSort] :sort Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.
    # @option opts [String] :filter Filter application keys by the specified string.
    # @option opts [String] :filter_created_at_start Only include application keys created on or after the specified date.
    # @option opts [String] :filter_created_at_end Only include application keys created on or before the specified date.
    # @return [ListApplicationKeysResponse]
    def list_service_account_application_keys(service_account_id, opts = {})
      data, _status_code, _headers = list_service_account_application_keys_with_http_info(service_account_id, opts)
      data
    end

    # List application keys for this service account
    # List all application keys available for this service account.
    # @param service_account_id [String] The ID of the service account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_number Specific page number to return.
    # @option opts [ApplicationKeysSort] :sort Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.
    # @option opts [String] :filter Filter application keys by the specified string.
    # @option opts [String] :filter_created_at_start Only include application keys created on or after the specified date.
    # @option opts [String] :filter_created_at_end Only include application keys created on or before the specified date.
    # @return [Array<(ListApplicationKeysResponse, Integer, Hash)>] ListApplicationKeysResponse data, response status code and response headers
    def list_service_account_application_keys_with_http_info(service_account_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_service_account_application_keys)
        unstable_enabled = @api_client.config.unstable_operations[:list_service_account_application_keys]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_service_account_application_keys")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_service_account_application_keys"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountsAPI.list_service_account_application_keys ...'
      end
      # verify the required parameter 'service_account_id' is set
      if @api_client.config.client_side_validation && service_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_account_id' when calling ServiceAccountsAPI.list_service_account_application_keys"
      end
      # resource path
      local_var_path = '/api/v2/service_accounts/{service_account_id}/application_keys'.sub('{service_account_id}', CGI.escape(service_account_id.to_s).gsub('%2F', '/'))

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
        :operation => :list_service_account_application_keys,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountsAPI#list_service_account_application_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an application key for this service account
    # Edit an application key owned by this service account.
    # @param service_account_id [String] The ID of the service account.
    # @param app_key_id [String] The ID of the application key.
    # @param body [ApplicationKeyUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [PartialApplicationKeyResponse]
    def update_service_account_application_key(service_account_id, app_key_id, body, opts = {})
      data, _status_code, _headers = update_service_account_application_key_with_http_info(service_account_id, app_key_id, body, opts)
      data
    end

    # Edit an application key for this service account
    # Edit an application key owned by this service account.
    # @param service_account_id [String] The ID of the service account.
    # @param app_key_id [String] The ID of the application key.
    # @param body [ApplicationKeyUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PartialApplicationKeyResponse, Integer, Hash)>] PartialApplicationKeyResponse data, response status code and response headers
    def update_service_account_application_key_with_http_info(service_account_id, app_key_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_service_account_application_key)
        unstable_enabled = @api_client.config.unstable_operations[:update_service_account_application_key]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_service_account_application_key")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_service_account_application_key"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountsAPI.update_service_account_application_key ...'
      end
      # verify the required parameter 'service_account_id' is set
      if @api_client.config.client_side_validation && service_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_account_id' when calling ServiceAccountsAPI.update_service_account_application_key"
      end
      # verify the required parameter 'app_key_id' is set
      if @api_client.config.client_side_validation && app_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_key_id' when calling ServiceAccountsAPI.update_service_account_application_key"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceAccountsAPI.update_service_account_application_key"
      end
      # resource path
      local_var_path = '/api/v2/service_accounts/{service_account_id}/application_keys/{app_key_id}'.sub('{service_account_id}', CGI.escape(service_account_id.to_s).gsub('%2F', '/')).sub('{app_key_id}', CGI.escape(app_key_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'PartialApplicationKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_service_account_application_key,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountsAPI#update_service_account_application_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
