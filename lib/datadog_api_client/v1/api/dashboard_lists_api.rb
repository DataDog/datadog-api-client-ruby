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
  class DashboardListsAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Create a dashboard list.
    #
    # @see #create_dashboard_list_with_http_info
    def create_dashboard_list(body, opts = {})
      data, _status_code, _headers = create_dashboard_list_with_http_info(body, opts)
      data
    end

    # Create a dashboard list.
    #
    # Create an empty dashboard list.
    #
    # @param body [DashboardList] Create a dashboard list request body.
    # @param opts [Hash] the optional parameters
    # @return [Array<(DashboardList, Integer, Hash)>] DashboardList data, response status code and response headers
    def create_dashboard_list_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_dashboard_list)
        unstable_enabled = @api_client.config.unstable_operations[:create_dashboard_list]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_dashboard_list")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_dashboard_list"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DashboardListsAPI.create_dashboard_list ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DashboardListsAPI.create_dashboard_list"
      end
      # resource path
      local_var_path = '/api/v1/dashboard/lists/manual'

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
      return_type = opts[:debug_return_type] || 'DashboardList'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_dashboard_list,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Post, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DashboardListsAPI#create_dashboard_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a dashboard list.
    #
    # @see #delete_dashboard_list_with_http_info
    def delete_dashboard_list(list_id, opts = {})
      data, _status_code, _headers = delete_dashboard_list_with_http_info(list_id, opts)
      data
    end

    # Delete a dashboard list.
    #
    # Delete a dashboard list.
    #
    # @param list_id [Integer] ID of the dashboard list to delete.
    # @param opts [Hash] the optional parameters
    # @return [Array<(DashboardListDeleteResponse, Integer, Hash)>] DashboardListDeleteResponse data, response status code and response headers
    def delete_dashboard_list_with_http_info(list_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_dashboard_list)
        unstable_enabled = @api_client.config.unstable_operations[:delete_dashboard_list]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_dashboard_list")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "delete_dashboard_list"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DashboardListsAPI.delete_dashboard_list ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling DashboardListsAPI.delete_dashboard_list"
      end
      # resource path
      local_var_path = '/api/v1/dashboard/lists/manual/{list_id}'.sub('{list_id}', CGI.escape(list_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'DashboardListDeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :delete_dashboard_list,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Delete, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DashboardListsAPI#delete_dashboard_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a dashboard list.
    #
    # @see #get_dashboard_list_with_http_info
    def get_dashboard_list(list_id, opts = {})
      data, _status_code, _headers = get_dashboard_list_with_http_info(list_id, opts)
      data
    end

    # Get a dashboard list.
    #
    # Fetch an existing dashboard list's definition.
    #
    # @param list_id [Integer] ID of the dashboard list to fetch.
    # @param opts [Hash] the optional parameters
    # @return [Array<(DashboardList, Integer, Hash)>] DashboardList data, response status code and response headers
    def get_dashboard_list_with_http_info(list_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_dashboard_list)
        unstable_enabled = @api_client.config.unstable_operations[:get_dashboard_list]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_dashboard_list")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_dashboard_list"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DashboardListsAPI.get_dashboard_list ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling DashboardListsAPI.get_dashboard_list"
      end
      # resource path
      local_var_path = '/api/v1/dashboard/lists/manual/{list_id}'.sub('{list_id}', CGI.escape(list_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'DashboardList'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_dashboard_list,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DashboardListsAPI#get_dashboard_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all dashboard lists.
    #
    # @see #list_dashboard_lists_with_http_info
    def list_dashboard_lists(opts = {})
      data, _status_code, _headers = list_dashboard_lists_with_http_info(opts)
      data
    end

    # Get all dashboard lists.
    #
    # Fetch all of your existing dashboard list definitions.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(DashboardListListResponse, Integer, Hash)>] DashboardListListResponse data, response status code and response headers
    def list_dashboard_lists_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_dashboard_lists)
        unstable_enabled = @api_client.config.unstable_operations[:list_dashboard_lists]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_dashboard_lists")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_dashboard_lists"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DashboardListsAPI.list_dashboard_lists ...'
      end
      # resource path
      local_var_path = '/api/v1/dashboard/lists/manual'

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
      return_type = opts[:debug_return_type] || 'DashboardListListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_dashboard_lists,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DashboardListsAPI#list_dashboard_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a dashboard list.
    #
    # @see #update_dashboard_list_with_http_info
    def update_dashboard_list(list_id, body, opts = {})
      data, _status_code, _headers = update_dashboard_list_with_http_info(list_id, body, opts)
      data
    end

    # Update a dashboard list.
    #
    # Update the name of a dashboard list.
    #
    # @param list_id [Integer] ID of the dashboard list to update.
    # @param body [DashboardList] Update a dashboard list request body.
    # @param opts [Hash] the optional parameters
    # @return [Array<(DashboardList, Integer, Hash)>] DashboardList data, response status code and response headers
    def update_dashboard_list_with_http_info(list_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_dashboard_list)
        unstable_enabled = @api_client.config.unstable_operations[:update_dashboard_list]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_dashboard_list")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_dashboard_list"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DashboardListsAPI.update_dashboard_list ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling DashboardListsAPI.update_dashboard_list"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DashboardListsAPI.update_dashboard_list"
      end
      # resource path
      local_var_path = '/api/v1/dashboard/lists/manual/{list_id}'.sub('{list_id}', CGI.escape(list_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'DashboardList'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :update_dashboard_list,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Put, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DashboardListsAPI#update_dashboard_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
