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
  class UsersAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create a user.
    #
    # @see #create_user_with_http_info
    def create_user(body, opts = {})
      data, _status_code, _headers = create_user_with_http_info(body, opts)
      data
    end

    # Create a user.
    #
    # Create a user for your organization.
    #
    # **Note**: Users can only be created with the admin access role
    # if application keys belong to administrators.
    #
    # @param body [User] User object that needs to be created.
    # @param opts [Hash] the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def create_user_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.create_user ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersAPI.create_user"
      end
      # resource path
      local_var_path = '/api/v1/user'

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
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_user,
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
        @api_client.config.logger.debug "API called: UsersAPI#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable a user.
    #
    # @see #disable_user_with_http_info
    def disable_user(user_handle, opts = {})
      data, _status_code, _headers = disable_user_with_http_info(user_handle, opts)
      data
    end

    # Disable a user.
    #
    # Delete a user from an organization.
    #
    # **Note**: This endpoint can only be used with application keys belonging to
    # administrators.
    #
    # @param user_handle [String] The handle of the user.
    # @param opts [Hash] the optional parameters
    # @return [Array<(UserDisableResponse, Integer, Hash)>] UserDisableResponse data, response status code and response headers
    def disable_user_with_http_info(user_handle, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.disable_user ...'
      end
      # verify the required parameter 'user_handle' is set
      if @api_client.config.client_side_validation && user_handle.nil?
        fail ArgumentError, "Missing the required parameter 'user_handle' when calling UsersAPI.disable_user"
      end
      # resource path
      local_var_path = '/api/v1/user/{user_handle}'.sub('{user_handle}', CGI.escape(user_handle.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'UserDisableResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :disable_user,
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
        @api_client.config.logger.debug "API called: UsersAPI#disable_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user details.
    #
    # @see #get_user_with_http_info
    def get_user(user_handle, opts = {})
      data, _status_code, _headers = get_user_with_http_info(user_handle, opts)
      data
    end

    # Get user details.
    #
    # Get a user's details.
    #
    # @param user_handle [String] The ID of the user.
    # @param opts [Hash] the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def get_user_with_http_info(user_handle, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.get_user ...'
      end
      # verify the required parameter 'user_handle' is set
      if @api_client.config.client_side_validation && user_handle.nil?
        fail ArgumentError, "Missing the required parameter 'user_handle' when calling UsersAPI.get_user"
      end
      # resource path
      local_var_path = '/api/v1/user/{user_handle}'.sub('{user_handle}', CGI.escape(user_handle.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_user,
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
        @api_client.config.logger.debug "API called: UsersAPI#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all users.
    #
    # @see #list_users_with_http_info
    def list_users(opts = {})
      data, _status_code, _headers = list_users_with_http_info(opts)
      data
    end

    # List all users.
    #
    # List all users for your organization.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(UserListResponse, Integer, Hash)>] UserListResponse data, response status code and response headers
    def list_users_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.list_users ...'
      end
      # resource path
      local_var_path = '/api/v1/user'

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
      return_type = opts[:debug_return_type] || 'UserListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_users,
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
        @api_client.config.logger.debug "API called: UsersAPI#list_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user.
    #
    # @see #update_user_with_http_info
    def update_user(user_handle, body, opts = {})
      data, _status_code, _headers = update_user_with_http_info(user_handle, body, opts)
      data
    end

    # Update a user.
    #
    # Update a user information.
    #
    # **Note**: It can only be used with application keys belonging to administrators.
    #
    # @param user_handle [String] The ID of the user.
    # @param body [User] Description of the update.
    # @param opts [Hash] the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def update_user_with_http_info(user_handle, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.update_user ...'
      end
      # verify the required parameter 'user_handle' is set
      if @api_client.config.client_side_validation && user_handle.nil?
        fail ArgumentError, "Missing the required parameter 'user_handle' when calling UsersAPI.update_user"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersAPI.update_user"
      end
      # resource path
      local_var_path = '/api/v1/user/{user_handle}'.sub('{user_handle}', CGI.escape(user_handle.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_user,
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
        @api_client.config.logger.debug "API called: UsersAPI#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
