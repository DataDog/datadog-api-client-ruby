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
  class FastlyIntegrationAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Add Fastly account.
    #
    # @see #create_fastly_account_with_http_info
    def create_fastly_account(body, opts = {})
      data, _status_code, _headers = create_fastly_account_with_http_info(body, opts)
      data
    end

    # Add Fastly account.
    #
    # Create a Fastly account.
    #
    # @param body [FastlyAccountCreateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(FastlyAccountResponse, Integer, Hash)>] FastlyAccountResponse data, response status code and response headers
    def create_fastly_account_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FastlyIntegrationAPI.create_fastly_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling FastlyIntegrationAPI.create_fastly_account"
      end
      # resource path
      local_var_path = '/api/v2/integrations/fastly/accounts'

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
      return_type = opts[:debug_return_type] || 'FastlyAccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_fastly_account,
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
        @api_client.config.logger.debug "API called: FastlyIntegrationAPI#create_fastly_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Fastly service.
    #
    # @see #create_fastly_service_with_http_info
    def create_fastly_service(account_id, body, opts = {})
      data, _status_code, _headers = create_fastly_service_with_http_info(account_id, body, opts)
      data
    end

    # Add Fastly service.
    #
    # Create a Fastly service for an account.
    #
    # @param account_id [String] Fastly Account id.
    # @param body [FastlyServiceRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(FastlyServiceResponse, Integer, Hash)>] FastlyServiceResponse data, response status code and response headers
    def create_fastly_service_with_http_info(account_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FastlyIntegrationAPI.create_fastly_service ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling FastlyIntegrationAPI.create_fastly_service"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling FastlyIntegrationAPI.create_fastly_service"
      end
      # resource path
      local_var_path = '/api/v2/integrations/fastly/accounts/{account_id}/services'.sub('{account_id}', CGI.escape(account_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'FastlyServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_fastly_service,
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
        @api_client.config.logger.debug "API called: FastlyIntegrationAPI#create_fastly_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Fastly account.
    #
    # @see #delete_fastly_account_with_http_info
    def delete_fastly_account(account_id, opts = {})
      delete_fastly_account_with_http_info(account_id, opts)
      nil
    end

    # Delete Fastly account.
    #
    # Delete a Fastly account.
    #
    # @param account_id [String] Fastly Account id.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_fastly_account_with_http_info(account_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FastlyIntegrationAPI.delete_fastly_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling FastlyIntegrationAPI.delete_fastly_account"
      end
      # resource path
      local_var_path = '/api/v2/integrations/fastly/accounts/{account_id}'.sub('{account_id}', CGI.escape(account_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_fastly_account,
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
        @api_client.config.logger.debug "API called: FastlyIntegrationAPI#delete_fastly_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Fastly service.
    #
    # @see #delete_fastly_service_with_http_info
    def delete_fastly_service(account_id, service_id, opts = {})
      delete_fastly_service_with_http_info(account_id, service_id, opts)
      nil
    end

    # Delete Fastly service.
    #
    # Delete a Fastly service for an account.
    #
    # @param account_id [String] Fastly Account id.
    # @param service_id [String] Fastly Service ID.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_fastly_service_with_http_info(account_id, service_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FastlyIntegrationAPI.delete_fastly_service ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling FastlyIntegrationAPI.delete_fastly_service"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling FastlyIntegrationAPI.delete_fastly_service"
      end
      # resource path
      local_var_path = '/api/v2/integrations/fastly/accounts/{account_id}/services/{service_id}'.sub('{account_id}', CGI.escape(account_id.to_s).gsub('%2F', '/')).sub('{service_id}', CGI.escape(service_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_fastly_service,
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
        @api_client.config.logger.debug "API called: FastlyIntegrationAPI#delete_fastly_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Fastly account.
    #
    # @see #get_fastly_account_with_http_info
    def get_fastly_account(account_id, opts = {})
      data, _status_code, _headers = get_fastly_account_with_http_info(account_id, opts)
      data
    end

    # Get Fastly account.
    #
    # Get a Fastly account.
    #
    # @param account_id [String] Fastly Account id.
    # @param opts [Hash] the optional parameters
    # @return [Array<(FastlyAccountResponse, Integer, Hash)>] FastlyAccountResponse data, response status code and response headers
    def get_fastly_account_with_http_info(account_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FastlyIntegrationAPI.get_fastly_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling FastlyIntegrationAPI.get_fastly_account"
      end
      # resource path
      local_var_path = '/api/v2/integrations/fastly/accounts/{account_id}'.sub('{account_id}', CGI.escape(account_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'FastlyAccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_fastly_account,
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
        @api_client.config.logger.debug "API called: FastlyIntegrationAPI#get_fastly_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Fastly service.
    #
    # @see #get_fastly_service_with_http_info
    def get_fastly_service(account_id, service_id, opts = {})
      data, _status_code, _headers = get_fastly_service_with_http_info(account_id, service_id, opts)
      data
    end

    # Get Fastly service.
    #
    # Get a Fastly service for an account.
    #
    # @param account_id [String] Fastly Account id.
    # @param service_id [String] Fastly Service ID.
    # @param opts [Hash] the optional parameters
    # @return [Array<(FastlyServiceResponse, Integer, Hash)>] FastlyServiceResponse data, response status code and response headers
    def get_fastly_service_with_http_info(account_id, service_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FastlyIntegrationAPI.get_fastly_service ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling FastlyIntegrationAPI.get_fastly_service"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling FastlyIntegrationAPI.get_fastly_service"
      end
      # resource path
      local_var_path = '/api/v2/integrations/fastly/accounts/{account_id}/services/{service_id}'.sub('{account_id}', CGI.escape(account_id.to_s).gsub('%2F', '/')).sub('{service_id}', CGI.escape(service_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'FastlyServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_fastly_service,
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
        @api_client.config.logger.debug "API called: FastlyIntegrationAPI#get_fastly_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Fastly accounts.
    #
    # @see #list_fastly_accounts_with_http_info
    def list_fastly_accounts(opts = {})
      data, _status_code, _headers = list_fastly_accounts_with_http_info(opts)
      data
    end

    # List Fastly accounts.
    #
    # List Fastly accounts.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(FastlyAccountsResponse, Integer, Hash)>] FastlyAccountsResponse data, response status code and response headers
    def list_fastly_accounts_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FastlyIntegrationAPI.list_fastly_accounts ...'
      end
      # resource path
      local_var_path = '/api/v2/integrations/fastly/accounts'

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
      return_type = opts[:debug_return_type] || 'FastlyAccountsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_fastly_accounts,
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
        @api_client.config.logger.debug "API called: FastlyIntegrationAPI#list_fastly_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Fastly services.
    #
    # @see #list_fastly_services_with_http_info
    def list_fastly_services(account_id, opts = {})
      data, _status_code, _headers = list_fastly_services_with_http_info(account_id, opts)
      data
    end

    # List Fastly services.
    #
    # List Fastly services for an account.
    #
    # @param account_id [String] Fastly Account id.
    # @param opts [Hash] the optional parameters
    # @return [Array<(FastlyServicesResponse, Integer, Hash)>] FastlyServicesResponse data, response status code and response headers
    def list_fastly_services_with_http_info(account_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FastlyIntegrationAPI.list_fastly_services ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling FastlyIntegrationAPI.list_fastly_services"
      end
      # resource path
      local_var_path = '/api/v2/integrations/fastly/accounts/{account_id}/services'.sub('{account_id}', CGI.escape(account_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'FastlyServicesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_fastly_services,
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
        @api_client.config.logger.debug "API called: FastlyIntegrationAPI#list_fastly_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Fastly account.
    #
    # @see #update_fastly_account_with_http_info
    def update_fastly_account(account_id, body, opts = {})
      data, _status_code, _headers = update_fastly_account_with_http_info(account_id, body, opts)
      data
    end

    # Update Fastly account.
    #
    # Update a Fastly account.
    #
    # @param account_id [String] Fastly Account id.
    # @param body [FastlyAccountUpdateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(FastlyAccountResponse, Integer, Hash)>] FastlyAccountResponse data, response status code and response headers
    def update_fastly_account_with_http_info(account_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FastlyIntegrationAPI.update_fastly_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling FastlyIntegrationAPI.update_fastly_account"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling FastlyIntegrationAPI.update_fastly_account"
      end
      # resource path
      local_var_path = '/api/v2/integrations/fastly/accounts/{account_id}'.sub('{account_id}', CGI.escape(account_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'FastlyAccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_fastly_account,
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
        @api_client.config.logger.debug "API called: FastlyIntegrationAPI#update_fastly_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Fastly service.
    #
    # @see #update_fastly_service_with_http_info
    def update_fastly_service(account_id, service_id, body, opts = {})
      data, _status_code, _headers = update_fastly_service_with_http_info(account_id, service_id, body, opts)
      data
    end

    # Update Fastly service.
    #
    # Update a Fastly service for an account.
    #
    # @param account_id [String] Fastly Account id.
    # @param service_id [String] Fastly Service ID.
    # @param body [FastlyServiceRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(FastlyServiceResponse, Integer, Hash)>] FastlyServiceResponse data, response status code and response headers
    def update_fastly_service_with_http_info(account_id, service_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FastlyIntegrationAPI.update_fastly_service ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling FastlyIntegrationAPI.update_fastly_service"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling FastlyIntegrationAPI.update_fastly_service"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling FastlyIntegrationAPI.update_fastly_service"
      end
      # resource path
      local_var_path = '/api/v2/integrations/fastly/accounts/{account_id}/services/{service_id}'.sub('{account_id}', CGI.escape(account_id.to_s).gsub('%2F', '/')).sub('{service_id}', CGI.escape(service_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'FastlyServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_fastly_service,
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
        @api_client.config.logger.debug "API called: FastlyIntegrationAPI#update_fastly_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
