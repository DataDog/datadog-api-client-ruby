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
    # @param body [UserCreateRequest] 
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
      local_var_path = '/api/v2/users'

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
        :api_version => "V2"
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
    def disable_user(user_id, opts = {})
      disable_user_with_http_info(user_id, opts)
      nil
    end

    # Disable a user.
    #
    # Disable a user. Can only be used with an application key belonging
    # to an administrator user.
    #
    # @param user_id [String] The ID of the user.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def disable_user_with_http_info(user_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.disable_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAPI.disable_user"
      end
      # resource path
      local_var_path = '/api/v2/users/{user_id}'.sub('{user_id}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

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
        :operation => :disable_user,
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
        @api_client.config.logger.debug "API called: UsersAPI#disable_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user invitation.
    #
    # @see #get_invitation_with_http_info
    def get_invitation(user_invitation_uuid, opts = {})
      data, _status_code, _headers = get_invitation_with_http_info(user_invitation_uuid, opts)
      data
    end

    # Get a user invitation.
    #
    # Returns a single user invitation by its UUID.
    #
    # @param user_invitation_uuid [UUID] The UUID of the user invitation.
    # @param opts [Hash] the optional parameters
    # @return [Array<(UserInvitationResponse, Integer, Hash)>] UserInvitationResponse data, response status code and response headers
    def get_invitation_with_http_info(user_invitation_uuid, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.get_invitation ...'
      end
      # verify the required parameter 'user_invitation_uuid' is set
      if @api_client.config.client_side_validation && user_invitation_uuid.nil?
        fail ArgumentError, "Missing the required parameter 'user_invitation_uuid' when calling UsersAPI.get_invitation"
      end
      # resource path
      local_var_path = '/api/v2/user_invitations/{user_invitation_uuid}'.sub('{user_invitation_uuid}', CGI.escape(user_invitation_uuid.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'UserInvitationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_invitation,
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
        @api_client.config.logger.debug "API called: UsersAPI#get_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user details.
    #
    # @see #get_user_with_http_info
    def get_user(user_id, opts = {})
      data, _status_code, _headers = get_user_with_http_info(user_id, opts)
      data
    end

    # Get user details.
    #
    # Get a user in the organization specified by the user’s `user_id`.
    #
    # @param user_id [String] The ID of the user.
    # @param opts [Hash] the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def get_user_with_http_info(user_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.get_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAPI.get_user"
      end
      # resource path
      local_var_path = '/api/v2/users/{user_id}'.sub('{user_id}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

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
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_user,
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
        @api_client.config.logger.debug "API called: UsersAPI#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user organization.
    #
    # @see #list_user_organizations_with_http_info
    def list_user_organizations(user_id, opts = {})
      data, _status_code, _headers = list_user_organizations_with_http_info(user_id, opts)
      data
    end

    # Get a user organization.
    #
    # Get a user organization. Returns the user information and all organizations
    # joined by this user.
    #
    # @param user_id [String] The ID of the user.
    # @param opts [Hash] the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def list_user_organizations_with_http_info(user_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.list_user_organizations ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAPI.list_user_organizations"
      end
      # resource path
      local_var_path = '/api/v2/users/{user_id}/orgs'.sub('{user_id}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

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
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_user_organizations,
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
        @api_client.config.logger.debug "API called: UsersAPI#list_user_organizations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user permissions.
    #
    # @see #list_user_permissions_with_http_info
    def list_user_permissions(user_id, opts = {})
      data, _status_code, _headers = list_user_permissions_with_http_info(user_id, opts)
      data
    end

    # Get a user permissions.
    #
    # Get a user permission set. Returns a list of the user’s permissions
    # granted by the associated user's roles.
    #
    # @param user_id [String] The ID of the user.
    # @param opts [Hash] the optional parameters
    # @return [Array<(PermissionsResponse, Integer, Hash)>] PermissionsResponse data, response status code and response headers
    def list_user_permissions_with_http_info(user_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.list_user_permissions ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAPI.list_user_permissions"
      end
      # resource path
      local_var_path = '/api/v2/users/{user_id}/permissions'.sub('{user_id}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'PermissionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_user_permissions,
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
        @api_client.config.logger.debug "API called: UsersAPI#list_user_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    # Get the list of all users in the organization. This list includes
    # all users even if they are deactivated or unverified.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Integer] :page_size Size for a given page. The maximum allowed value is 100.
    # @option opts [Integer] :page_number Specific page number to return.
    # @option opts [String] :sort User attribute to order results by. Sort order is ascending by default. Sort order is descending if the field is prefixed by a negative sign, for example `sort=-name`. Options: `name`, `modified_at`, `user_count`.
    # @option opts [QuerySortOrder] :sort_dir Direction of sort. Options: `asc`, `desc`.
    # @option opts [String] :filter Filter all users by the given string. Defaults to no filtering.
    # @option opts [String] :filter_status Filter on status attribute. Comma separated list, with possible values `Active`, `Pending`, and `Disabled`. Defaults to no filtering.
    # @return [Array<(UsersResponse, Integer, Hash)>] UsersResponse data, response status code and response headers
    def list_users_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.list_users ...'
      end
      allowable_values = ['asc', 'desc']
      if @api_client.config.client_side_validation && opts[:'sort_dir'] && !allowable_values.include?(opts[:'sort_dir'])
        fail ArgumentError, "invalid value for \"sort_dir\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v2/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'filter[status]'] = opts[:'filter_status'] if !opts[:'filter_status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UsersResponse'

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
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPI#list_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all users.
    #
    # Provide a paginated version of {#list_users}, returning all items.
    #
    # To use it you need to use a block: list_users_with_pagination { |item| p item }
    #
    # @yield [User] Paginated items
    def list_users_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "page_size", 10)
        @api_client.set_attribute_from_path(api_version, opts, "page_size", Integer, page_size)
        @api_client.set_attribute_from_path(api_version, opts, "page_number", Integer, 0)
        while true do
            response = list_users(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "page_number", Integer, @api_client.get_attribute_from_path(opts, "page_number", 0) + 1)
        end
    end

    # Send invitation emails.
    #
    # @see #send_invitations_with_http_info
    def send_invitations(body, opts = {})
      data, _status_code, _headers = send_invitations_with_http_info(body, opts)
      data
    end

    # Send invitation emails.
    #
    # Sends emails to one or more users inviting them to join the organization.
    #
    # @param body [UserInvitationsRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(UserInvitationsResponse, Integer, Hash)>] UserInvitationsResponse data, response status code and response headers
    def send_invitations_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.send_invitations ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersAPI.send_invitations"
      end
      # resource path
      local_var_path = '/api/v2/user_invitations'

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
      return_type = opts[:debug_return_type] || 'UserInvitationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :send_invitations,
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
        @api_client.config.logger.debug "API called: UsersAPI#send_invitations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user.
    #
    # @see #update_user_with_http_info
    def update_user(user_id, body, opts = {})
      data, _status_code, _headers = update_user_with_http_info(user_id, body, opts)
      data
    end

    # Update a user.
    #
    # Edit a user. Can only be used with an application key belonging
    # to an administrator user.
    #
    # @param user_id [String] The ID of the user.
    # @param body [UserUpdateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def update_user_with_http_info(user_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersAPI.update_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAPI.update_user"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersAPI.update_user"
      end
      # resource path
      local_var_path = '/api/v2/users/{user_id}'.sub('{user_id}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

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
        :operation => :update_user,
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
        @api_client.config.logger.debug "API called: UsersAPI#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
