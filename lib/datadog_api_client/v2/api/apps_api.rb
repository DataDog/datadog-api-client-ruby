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
  class AppsAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create App.
    #
    # @see #create_app_with_http_info
    def create_app(body, opts = {})
      data, _status_code, _headers = create_app_with_http_info(body, opts)
      data
    end

    # Create App.
    #
    # Create a new app, returning the app ID
    #
    # @param body [CreateAppRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(CreateAppResponse, Integer, Hash)>] CreateAppResponse data, response status code and response headers
    def create_app_with_http_info(body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.create_app".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.create_app")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.create_app"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsAPI.create_app ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AppsAPI.create_app"
      end
      # resource path
      local_var_path = '/api/v2/app-builder/apps'

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
      return_type = opts[:debug_return_type] || 'CreateAppResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_app,
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
        @api_client.config.logger.debug "API called: AppsAPI#create_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete App.
    #
    # @see #delete_app_with_http_info
    def delete_app(app_id, opts = {})
      data, _status_code, _headers = delete_app_with_http_info(app_id, opts)
      data
    end

    # Delete App.
    #
    # Delete an app by ID
    #
    # @param app_id [String] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(DeleteAppResponse, Integer, Hash)>] DeleteAppResponse data, response status code and response headers
    def delete_app_with_http_info(app_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.delete_app".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.delete_app")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.delete_app"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsAPI.delete_app ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppsAPI.delete_app"
      end
      # resource path
      local_var_path = '/api/v2/app-builder/apps/{app_id}'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'DeleteAppResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_app,
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
        @api_client.config.logger.debug "API called: AppsAPI#delete_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Multiple Apps.
    #
    # @see #delete_apps_with_http_info
    def delete_apps(body, opts = {})
      data, _status_code, _headers = delete_apps_with_http_info(body, opts)
      data
    end

    # Delete Multiple Apps.
    #
    # Delete multiple apps by ID
    #
    # @param body [DeleteAppsRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(DeleteAppsResponse, Integer, Hash)>] DeleteAppsResponse data, response status code and response headers
    def delete_apps_with_http_info(body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.delete_apps".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.delete_apps")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.delete_apps"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsAPI.delete_apps ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AppsAPI.delete_apps"
      end
      # resource path
      local_var_path = '/api/v2/app-builder/apps'

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
      return_type = opts[:debug_return_type] || 'DeleteAppsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_apps,
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
        @api_client.config.logger.debug "API called: AppsAPI#delete_apps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get App.
    #
    # @see #get_app_with_http_info
    def get_app(app_id, opts = {})
      data, _status_code, _headers = get_app_with_http_info(app_id, opts)
      data
    end

    # Get App.
    #
    # Get the full definition of an app by ID
    #
    # @param app_id [String] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(GetAppResponse, Integer, Hash)>] GetAppResponse data, response status code and response headers
    def get_app_with_http_info(app_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.get_app".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.get_app")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.get_app"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsAPI.get_app ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppsAPI.get_app"
      end
      # resource path
      local_var_path = '/api/v2/app-builder/apps/{app_id}'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'GetAppResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_app,
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
        @api_client.config.logger.debug "API called: AppsAPI#get_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Apps.
    #
    # @see #list_apps_with_http_info
    def list_apps(opts = {})
      data, _status_code, _headers = list_apps_with_http_info(opts)
      data
    end

    # List Apps.
    #
    # List all apps, with optional filters and sorting
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Integer] :limit The number of apps to return per page
    # @option opts [Integer] :page The page number to return
    # @option opts [String] :filter_user_name The `AppsFilter` `user_name`.
    # @option opts [String] :filter_user_uuid The `AppsFilter` `user_uuid`.
    # @option opts [String] :filter_name The `AppsFilter` `name`.
    # @option opts [String] :filter_query The `AppsFilter` `query`.
    # @option opts [Boolean] :filter_deployed The `AppsFilter` `deployed`.
    # @option opts [String] :filter_tags The `AppsFilter` `tags`.
    # @option opts [Boolean] :filter_favorite The `AppsFilter` `favorite`.
    # @option opts [Array<AppsSortField>] :sort 
    # @return [Array<(ListAppsResponse, Integer, Hash)>] ListAppsResponse data, response status code and response headers
    def list_apps_with_http_info(opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.list_apps".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.list_apps")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.list_apps"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsAPI.list_apps ...'
      end
      # resource path
      local_var_path = '/api/v2/app-builder/apps'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'filter[user_name]'] = opts[:'filter_user_name'] if !opts[:'filter_user_name'].nil?
      query_params[:'filter[user_uuid]'] = opts[:'filter_user_uuid'] if !opts[:'filter_user_uuid'].nil?
      query_params[:'filter[name]'] = opts[:'filter_name'] if !opts[:'filter_name'].nil?
      query_params[:'filter[query]'] = opts[:'filter_query'] if !opts[:'filter_query'].nil?
      query_params[:'filter[deployed]'] = opts[:'filter_deployed'] if !opts[:'filter_deployed'].nil?
      query_params[:'filter[tags]'] = opts[:'filter_tags'] if !opts[:'filter_tags'].nil?
      query_params[:'filter[favorite]'] = opts[:'filter_favorite'] if !opts[:'filter_favorite'].nil?
      query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :csv) if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListAppsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_apps,
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
        @api_client.config.logger.debug "API called: AppsAPI#list_apps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update App.
    #
    # @see #update_app_with_http_info
    def update_app(app_id, body, opts = {})
      data, _status_code, _headers = update_app_with_http_info(app_id, body, opts)
      data
    end

    # Update App.
    #
    # Update an existing app by ID. Creates a new version of the app
    #
    # @param app_id [String] 
    # @param body [UpdateAppRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(UpdateAppResponse, Integer, Hash)>] UpdateAppResponse data, response status code and response headers
    def update_app_with_http_info(app_id, body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.update_app".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.update_app")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.update_app"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsAPI.update_app ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppsAPI.update_app"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AppsAPI.update_app"
      end
      # resource path
      local_var_path = '/api/v2/app-builder/apps/{app_id}'.sub('{app_id}', CGI.escape(app_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'UpdateAppResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_app,
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
        @api_client.config.logger.debug "API called: AppsAPI#update_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
