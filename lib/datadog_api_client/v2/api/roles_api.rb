=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'cgi'

module DatadogAPIClient::V2
  class RolesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Grant permission to a role
    # Adds a permission to a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [RelationshipToPermission] :body 
    # @return [PermissionsResponse]
    def add_permission_to_role(role_id, opts = {})
      data, _status_code, _headers = add_permission_to_role_with_http_info(role_id, opts)
      data
    end

    # Grant permission to a role
    # Adds a permission to a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [RelationshipToPermission] :body 
    # @return [Array<(PermissionsResponse, Integer, Hash)>] PermissionsResponse data, response status code and response headers
    def add_permission_to_role_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.add_permission_to_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.add_permission_to_role"
      end
      # resource path
      local_var_path = '/api/v2/roles/{role_id}/permissions'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'PermissionsResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.add_permission_to_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#add_permission_to_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a user to a role
    # Adds a user to a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [RelationshipToUser] :body 
    # @return [UsersResponse]
    def add_user_to_role(role_id, opts = {})
      data, _status_code, _headers = add_user_to_role_with_http_info(role_id, opts)
      data
    end

    # Add a user to a role
    # Adds a user to a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [RelationshipToUser] :body 
    # @return [Array<(UsersResponse, Integer, Hash)>] UsersResponse data, response status code and response headers
    def add_user_to_role_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.add_user_to_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.add_user_to_role"
      end
      # resource path
      local_var_path = '/api/v2/roles/{role_id}/users'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'UsersResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.add_user_to_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#add_user_to_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create role
    # Create a new role for your organization.
    # @param [Hash] opts the optional parameters
    # @option opts [RoleCreateRequest] :body 
    # @return [RoleCreateResponse]
    def create_role(opts = {})
      data, _status_code, _headers = create_role_with_http_info(opts)
      data
    end

    # Create role
    # Create a new role for your organization.
    # @param [Hash] opts the optional parameters
    # @option opts [RoleCreateRequest] :body 
    # @return [Array<(RoleCreateResponse, Integer, Hash)>] RoleCreateResponse data, response status code and response headers
    def create_role_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.create_role ...'
      end
      # resource path
      local_var_path = '/api/v2/roles'

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'RoleCreateResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.create_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#create_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete role
    # Disables a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_role(role_id, opts = {})
      delete_role_with_http_info(role_id, opts)
      nil
    end

    # Delete role
    # Disables a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_role_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.delete_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.delete_role"
      end
      # resource path
      local_var_path = '/api/v2/roles/{role_id}'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.delete_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#delete_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a role
    # Get a role in the organization specified by the role’s `role_id`.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @return [RoleResponse]
    def get_role(role_id, opts = {})
      data, _status_code, _headers = get_role_with_http_info(role_id, opts)
      data
    end

    # Get a role
    # Get a role in the organization specified by the role’s &#x60;role_id&#x60;.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleResponse, Integer, Hash)>] RoleResponse data, response status code and response headers
    def get_role_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.get_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.get_role"
      end
      # resource path
      local_var_path = '/api/v2/roles/{role_id}'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'RoleResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.get_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#get_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List permissions
    # Returns a list of all permissions, including name, description, and ID.
    # @param [Hash] opts the optional parameters
    # @return [PermissionsResponse]
    def list_permissions(opts = {})
      data, _status_code, _headers = list_permissions_with_http_info(opts)
      data
    end

    # List permissions
    # Returns a list of all permissions, including name, description, and ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PermissionsResponse, Integer, Hash)>] PermissionsResponse data, response status code and response headers
    def list_permissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.list_permissions ...'
      end
      # resource path
      local_var_path = '/api/v2/permissions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PermissionsResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.list_permissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#list_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List permissions for a role
    # Returns a list of all permissions for a single role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @return [PermissionsResponse]
    def list_role_permissions(role_id, opts = {})
      data, _status_code, _headers = list_role_permissions_with_http_info(role_id, opts)
      data
    end

    # List permissions for a role
    # Returns a list of all permissions for a single role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PermissionsResponse, Integer, Hash)>] PermissionsResponse data, response status code and response headers
    def list_role_permissions_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.list_role_permissions ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.list_role_permissions"
      end
      # resource path
      local_var_path = '/api/v2/roles/{role_id}/permissions'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PermissionsResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.list_role_permissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#list_role_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all users of a role
    # Gets all users of a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Size for a given page. (default to 10)
    # @option opts [Integer] :page_number Specific page number to return. (default to 0)
    # @option opts [String] :sort User attribute to order results by. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example &#x60;sort&#x3D;-name&#x60;. Options: &#x60;name&#x60;, &#x60;email&#x60;, &#x60;status&#x60;. (default to 'name')
    # @option opts [String] :filter Filter all users by the given string. Defaults to no filtering.
    # @return [UsersResponse]
    def list_role_users(role_id, opts = {})
      data, _status_code, _headers = list_role_users_with_http_info(role_id, opts)
      data
    end

    # Get all users of a role
    # Gets all users of a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_number Specific page number to return.
    # @option opts [String] :sort User attribute to order results by. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example &#x60;sort&#x3D;-name&#x60;. Options: &#x60;name&#x60;, &#x60;email&#x60;, &#x60;status&#x60;.
    # @option opts [String] :filter Filter all users by the given string. Defaults to no filtering.
    # @return [Array<(UsersResponse, Integer, Hash)>] UsersResponse data, response status code and response headers
    def list_role_users_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.list_role_users ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.list_role_users"
      end
      # resource path
      local_var_path = '/api/v2/roles/{role_id}/users'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'UsersResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.list_role_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#list_role_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List roles
    # Returns all roles, including their names and IDs.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Size for a given page. (default to 10)
    # @option opts [Integer] :page_number Specific page number to return. (default to 0)
    # @option opts [RolesSort] :sort Sort roles depending on the given field. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example: &#x60;sort&#x3D;-name&#x60;.
    # @option opts [String] :filter Filter all roles by the given string.
    # @return [RolesResponse]
    def list_roles(opts = {})
      data, _status_code, _headers = list_roles_with_http_info(opts)
      data
    end

    # List roles
    # Returns all roles, including their names and IDs.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_number Specific page number to return.
    # @option opts [RolesSort] :sort Sort roles depending on the given field. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example: &#x60;sort&#x3D;-name&#x60;.
    # @option opts [String] :filter Filter all roles by the given string.
    # @return [Array<(RolesResponse, Integer, Hash)>] RolesResponse data, response status code and response headers
    def list_roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.list_roles ...'
      end
      # resource path
      local_var_path = '/api/v2/roles'

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
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'RolesResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.list_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#list_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke permission
    # Removes a permission from a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [RelationshipToPermission] :body 
    # @return [PermissionsResponse]
    def remove_permission_from_role(role_id, opts = {})
      data, _status_code, _headers = remove_permission_from_role_with_http_info(role_id, opts)
      data
    end

    # Revoke permission
    # Removes a permission from a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [RelationshipToPermission] :body 
    # @return [Array<(PermissionsResponse, Integer, Hash)>] PermissionsResponse data, response status code and response headers
    def remove_permission_from_role_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.remove_permission_from_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.remove_permission_from_role"
      end
      # resource path
      local_var_path = '/api/v2/roles/{role_id}/permissions'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'PermissionsResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.remove_permission_from_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#remove_permission_from_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a user from a role
    # Removes a user from a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [RelationshipToUser] :body 
    # @return [UsersResponse]
    def remove_user_from_role(role_id, opts = {})
      data, _status_code, _headers = remove_user_from_role_with_http_info(role_id, opts)
      data
    end

    # Remove a user from a role
    # Removes a user from a role.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [RelationshipToUser] :body 
    # @return [Array<(UsersResponse, Integer, Hash)>] UsersResponse data, response status code and response headers
    def remove_user_from_role_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.remove_user_from_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.remove_user_from_role"
      end
      # resource path
      local_var_path = '/api/v2/roles/{role_id}/users'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'UsersResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.remove_user_from_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#remove_user_from_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a role
    # Edit a role. Can only be used with application keys belonging to administrators.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [RoleUpdateRequest] :body 
    # @return [RoleUpdateResponse]
    def update_role(role_id, opts = {})
      data, _status_code, _headers = update_role_with_http_info(role_id, opts)
      data
    end

    # Update a role
    # Edit a role. Can only be used with application keys belonging to administrators.
    # @param role_id [String] The ID of the role.
    # @param [Hash] opts the optional parameters
    # @option opts [RoleUpdateRequest] :body 
    # @return [Array<(RoleUpdateResponse, Integer, Hash)>] RoleUpdateResponse data, response status code and response headers
    def update_role_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.update_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.update_role"
      end
      # resource path
      local_var_path = '/api/v2/roles/{role_id}'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'RoleUpdateResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"RolesApi.update_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#update_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
