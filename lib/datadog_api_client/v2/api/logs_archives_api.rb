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
  class LogsArchivesAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end
    # Grant role to an archive
    # Adds a read role to an archive. ([Roles API](https://docs.datadoghq.com/api/v2/roles/))
    # @param archive_id [String] The ID of the archive.
    # @param body [RelationshipToRole] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_read_role_to_archive(archive_id, body, opts = {})
      add_read_role_to_archive_with_http_info(archive_id, body, opts)
      nil
    end

    # Grant role to an archive
    # Adds a read role to an archive. ([Roles API](https://docs.datadoghq.com/api/v2/roles/))
    # @param archive_id [String] The ID of the archive.
    # @param body [RelationshipToRole] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_read_role_to_archive_with_http_info(archive_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:add_read_role_to_archive)
        unstable_enabled = @api_client.config.unstable_operations[:add_read_role_to_archive]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "add_read_role_to_archive")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "add_read_role_to_archive"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsArchivesAPI.add_read_role_to_archive ...'
      end
      # verify the required parameter 'archive_id' is set
      if @api_client.config.client_side_validation && archive_id.nil?
        fail ArgumentError, "Missing the required parameter 'archive_id' when calling LogsArchivesAPI.add_read_role_to_archive"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsArchivesAPI.add_read_role_to_archive"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/archives/{archive_id}/readers'.sub('{' + 'archive_id' + '}', CGI.escape(archive_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :add_read_role_to_archive,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsArchivesAPI#add_read_role_to_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an archive
    # Create an archive in your organization.
    # @param body [LogsArchiveCreateRequest] The definition of the new archive.
    # @param [Hash] opts the optional parameters
    # @return [LogsArchive]
    def create_logs_archive(body, opts = {})
      data, _status_code, _headers = create_logs_archive_with_http_info(body, opts)
      data
    end

    # Create an archive
    # Create an archive in your organization.
    # @param body [LogsArchiveCreateRequest] The definition of the new archive.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsArchive, Integer, Hash)>] LogsArchive data, response status code and response headers
    def create_logs_archive_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_logs_archive)
        unstable_enabled = @api_client.config.unstable_operations[:create_logs_archive]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_logs_archive")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_logs_archive"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsArchivesAPI.create_logs_archive ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsArchivesAPI.create_logs_archive"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/archives'

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
      return_type = opts[:debug_return_type] || 'LogsArchive'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_logs_archive,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsArchivesAPI#create_logs_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an archive
    # Delete a given archive from your organization.
    # @param archive_id [String] The ID of the archive.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_logs_archive(archive_id, opts = {})
      delete_logs_archive_with_http_info(archive_id, opts)
      nil
    end

    # Delete an archive
    # Delete a given archive from your organization.
    # @param archive_id [String] The ID of the archive.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_logs_archive_with_http_info(archive_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_logs_archive)
        unstable_enabled = @api_client.config.unstable_operations[:delete_logs_archive]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_logs_archive")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "delete_logs_archive"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsArchivesAPI.delete_logs_archive ...'
      end
      # verify the required parameter 'archive_id' is set
      if @api_client.config.client_side_validation && archive_id.nil?
        fail ArgumentError, "Missing the required parameter 'archive_id' when calling LogsArchivesAPI.delete_logs_archive"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/archives/{archive_id}'.sub('{' + 'archive_id' + '}', CGI.escape(archive_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_logs_archive,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsArchivesAPI#delete_logs_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an archive
    # Get a specific archive from your organization.
    # @param archive_id [String] The ID of the archive.
    # @param [Hash] opts the optional parameters
    # @return [LogsArchive]
    def get_logs_archive(archive_id, opts = {})
      data, _status_code, _headers = get_logs_archive_with_http_info(archive_id, opts)
      data
    end

    # Get an archive
    # Get a specific archive from your organization.
    # @param archive_id [String] The ID of the archive.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsArchive, Integer, Hash)>] LogsArchive data, response status code and response headers
    def get_logs_archive_with_http_info(archive_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_logs_archive)
        unstable_enabled = @api_client.config.unstable_operations[:get_logs_archive]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_logs_archive")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_logs_archive"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsArchivesAPI.get_logs_archive ...'
      end
      # verify the required parameter 'archive_id' is set
      if @api_client.config.client_side_validation && archive_id.nil?
        fail ArgumentError, "Missing the required parameter 'archive_id' when calling LogsArchivesAPI.get_logs_archive"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/archives/{archive_id}'.sub('{' + 'archive_id' + '}', CGI.escape(archive_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LogsArchive'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_logs_archive,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsArchivesAPI#get_logs_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get archive order
    # Get the current order of your archives. This endpoint takes no JSON arguments.
    # @param [Hash] opts the optional parameters
    # @return [LogsArchiveOrder]
    def get_logs_archive_order(opts = {})
      data, _status_code, _headers = get_logs_archive_order_with_http_info(opts)
      data
    end

    # Get archive order
    # Get the current order of your archives. This endpoint takes no JSON arguments.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsArchiveOrder, Integer, Hash)>] LogsArchiveOrder data, response status code and response headers
    def get_logs_archive_order_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_logs_archive_order)
        unstable_enabled = @api_client.config.unstable_operations[:get_logs_archive_order]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_logs_archive_order")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_logs_archive_order"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsArchivesAPI.get_logs_archive_order ...'
      end
      # resource path
      local_var_path = '/api/v2/logs/config/archive-order'

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
      return_type = opts[:debug_return_type] || 'LogsArchiveOrder'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_logs_archive_order,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsArchivesAPI#get_logs_archive_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List read roles for an archive
    # Returns all read roles a given archive is restricted to.
    # @param archive_id [String] The ID of the archive.
    # @param [Hash] opts the optional parameters
    # @return [RolesResponse]
    def list_archive_read_roles(archive_id, opts = {})
      data, _status_code, _headers = list_archive_read_roles_with_http_info(archive_id, opts)
      data
    end

    # List read roles for an archive
    # Returns all read roles a given archive is restricted to.
    # @param archive_id [String] The ID of the archive.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RolesResponse, Integer, Hash)>] RolesResponse data, response status code and response headers
    def list_archive_read_roles_with_http_info(archive_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_archive_read_roles)
        unstable_enabled = @api_client.config.unstable_operations[:list_archive_read_roles]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_archive_read_roles")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_archive_read_roles"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsArchivesAPI.list_archive_read_roles ...'
      end
      # verify the required parameter 'archive_id' is set
      if @api_client.config.client_side_validation && archive_id.nil?
        fail ArgumentError, "Missing the required parameter 'archive_id' when calling LogsArchivesAPI.list_archive_read_roles"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/archives/{archive_id}/readers'.sub('{' + 'archive_id' + '}', CGI.escape(archive_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RolesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_archive_read_roles,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsArchivesAPI#list_archive_read_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all archives
    # Get the list of configured logs archives with their definitions.
    # @param [Hash] opts the optional parameters
    # @return [LogsArchives]
    def list_logs_archives(opts = {})
      data, _status_code, _headers = list_logs_archives_with_http_info(opts)
      data
    end

    # Get all archives
    # Get the list of configured logs archives with their definitions.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsArchives, Integer, Hash)>] LogsArchives data, response status code and response headers
    def list_logs_archives_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_logs_archives)
        unstable_enabled = @api_client.config.unstable_operations[:list_logs_archives]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_logs_archives")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_logs_archives"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsArchivesAPI.list_logs_archives ...'
      end
      # resource path
      local_var_path = '/api/v2/logs/config/archives'

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
      return_type = opts[:debug_return_type] || 'LogsArchives'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_logs_archives,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsArchivesAPI#list_logs_archives\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke role from an archive
    # Removes a role from an archive. ([Roles API](https://docs.datadoghq.com/api/v2/roles/))
    # @param archive_id [String] The ID of the archive.
    # @param body [RelationshipToRole] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_role_from_archive(archive_id, body, opts = {})
      remove_role_from_archive_with_http_info(archive_id, body, opts)
      nil
    end

    # Revoke role from an archive
    # Removes a role from an archive. ([Roles API](https://docs.datadoghq.com/api/v2/roles/))
    # @param archive_id [String] The ID of the archive.
    # @param body [RelationshipToRole] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_role_from_archive_with_http_info(archive_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:remove_role_from_archive)
        unstable_enabled = @api_client.config.unstable_operations[:remove_role_from_archive]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "remove_role_from_archive")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "remove_role_from_archive"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsArchivesAPI.remove_role_from_archive ...'
      end
      # verify the required parameter 'archive_id' is set
      if @api_client.config.client_side_validation && archive_id.nil?
        fail ArgumentError, "Missing the required parameter 'archive_id' when calling LogsArchivesAPI.remove_role_from_archive"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsArchivesAPI.remove_role_from_archive"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/archives/{archive_id}/readers'.sub('{' + 'archive_id' + '}', CGI.escape(archive_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :remove_role_from_archive,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsArchivesAPI#remove_role_from_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an archive
    # Update a given archive configuration.  **Note**: Using this method updates your archive configuration by **replacing** your current configuration with the new one sent to your Datadog organization.
    # @param archive_id [String] The ID of the archive.
    # @param body [LogsArchiveCreateRequest] New definition of the archive.
    # @param [Hash] opts the optional parameters
    # @return [LogsArchive]
    def update_logs_archive(archive_id, body, opts = {})
      data, _status_code, _headers = update_logs_archive_with_http_info(archive_id, body, opts)
      data
    end

    # Update an archive
    # Update a given archive configuration.  **Note**: Using this method updates your archive configuration by **replacing** your current configuration with the new one sent to your Datadog organization.
    # @param archive_id [String] The ID of the archive.
    # @param body [LogsArchiveCreateRequest] New definition of the archive.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsArchive, Integer, Hash)>] LogsArchive data, response status code and response headers
    def update_logs_archive_with_http_info(archive_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_logs_archive)
        unstable_enabled = @api_client.config.unstable_operations[:update_logs_archive]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_logs_archive")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_logs_archive"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsArchivesAPI.update_logs_archive ...'
      end
      # verify the required parameter 'archive_id' is set
      if @api_client.config.client_side_validation && archive_id.nil?
        fail ArgumentError, "Missing the required parameter 'archive_id' when calling LogsArchivesAPI.update_logs_archive"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsArchivesAPI.update_logs_archive"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/archives/{archive_id}'.sub('{' + 'archive_id' + '}', CGI.escape(archive_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LogsArchive'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_logs_archive,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsArchivesAPI#update_logs_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update archive order
    # Update the order of your archives. Since logs are processed sequentially, reordering an archive may change the structure and content of the data processed by other archives.  **Note**: Using the `PUT` method updates your archive's order by replacing the current order with the new one.
    # @param body [LogsArchiveOrder] An object containing the new ordered list of archive IDs.
    # @param [Hash] opts the optional parameters
    # @return [LogsArchiveOrder]
    def update_logs_archive_order(body, opts = {})
      data, _status_code, _headers = update_logs_archive_order_with_http_info(body, opts)
      data
    end

    # Update archive order
    # Update the order of your archives. Since logs are processed sequentially, reordering an archive may change the structure and content of the data processed by other archives.  **Note**: Using the &#x60;PUT&#x60; method updates your archive&#39;s order by replacing the current order with the new one.
    # @param body [LogsArchiveOrder] An object containing the new ordered list of archive IDs.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsArchiveOrder, Integer, Hash)>] LogsArchiveOrder data, response status code and response headers
    def update_logs_archive_order_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_logs_archive_order)
        unstable_enabled = @api_client.config.unstable_operations[:update_logs_archive_order]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_logs_archive_order")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_logs_archive_order"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsArchivesAPI.update_logs_archive_order ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsArchivesAPI.update_logs_archive_order"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/archive-order'

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
      return_type = opts[:debug_return_type] || 'LogsArchiveOrder'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_logs_archive_order,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsArchivesAPI#update_logs_archive_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
