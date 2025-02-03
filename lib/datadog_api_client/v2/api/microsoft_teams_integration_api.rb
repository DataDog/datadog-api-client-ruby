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
  class MicrosoftTeamsIntegrationAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create tenant-based handle.
    #
    # @see #create_tenant_based_handle_with_http_info
    def create_tenant_based_handle(body, opts = {})
      data, _status_code, _headers = create_tenant_based_handle_with_http_info(body, opts)
      data
    end

    # Create tenant-based handle.
    #
    # Create a tenant-based handle in the Datadog Microsoft Teams integration.
    #
    # @param body [MicrosoftTeamsCreateTenantBasedHandleRequest] Tenant-based handle payload.
    # @param opts [Hash] the optional parameters
    # @return [Array<(MicrosoftTeamsTenantBasedHandleResponse, Integer, Hash)>] MicrosoftTeamsTenantBasedHandleResponse data, response status code and response headers
    def create_tenant_based_handle_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.create_tenant_based_handle ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MicrosoftTeamsIntegrationAPI.create_tenant_based_handle"
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/tenant-based-handles'

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
      return_type = opts[:debug_return_type] || 'MicrosoftTeamsTenantBasedHandleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_tenant_based_handle,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#create_tenant_based_handle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Workflows webhook handle.
    #
    # @see #create_workflows_webhook_handle_with_http_info
    def create_workflows_webhook_handle(body, opts = {})
      data, _status_code, _headers = create_workflows_webhook_handle_with_http_info(body, opts)
      data
    end

    # Create Workflows webhook handle.
    #
    # Create a Workflows webhook handle in the Datadog Microsoft Teams integration.
    #
    # @param body [MicrosoftTeamsCreateWorkflowsWebhookHandleRequest] Workflows Webhook handle payload.
    # @param opts [Hash] the optional parameters
    # @return [Array<(MicrosoftTeamsWorkflowsWebhookHandleResponse, Integer, Hash)>] MicrosoftTeamsWorkflowsWebhookHandleResponse data, response status code and response headers
    def create_workflows_webhook_handle_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.create_workflows_webhook_handle ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MicrosoftTeamsIntegrationAPI.create_workflows_webhook_handle"
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/workflows-webhook-handles'

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
      return_type = opts[:debug_return_type] || 'MicrosoftTeamsWorkflowsWebhookHandleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_workflows_webhook_handle,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#create_workflows_webhook_handle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete tenant-based handle.
    #
    # @see #delete_tenant_based_handle_with_http_info
    def delete_tenant_based_handle(handle_id, opts = {})
      delete_tenant_based_handle_with_http_info(handle_id, opts)
      nil
    end

    # Delete tenant-based handle.
    #
    # Delete a tenant-based handle from the Datadog Microsoft Teams integration.
    #
    # @param handle_id [String] Your tenant-based handle id.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tenant_based_handle_with_http_info(handle_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.delete_tenant_based_handle ...'
      end
      # verify the required parameter 'handle_id' is set
      if @api_client.config.client_side_validation && handle_id.nil?
        fail ArgumentError, "Missing the required parameter 'handle_id' when calling MicrosoftTeamsIntegrationAPI.delete_tenant_based_handle"
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/tenant-based-handles/{handle_id}'.sub('{handle_id}', CGI.escape(handle_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_tenant_based_handle,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#delete_tenant_based_handle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Workflows webhook handle.
    #
    # @see #delete_workflows_webhook_handle_with_http_info
    def delete_workflows_webhook_handle(handle_id, opts = {})
      delete_workflows_webhook_handle_with_http_info(handle_id, opts)
      nil
    end

    # Delete Workflows webhook handle.
    #
    # Delete a Workflows webhook handle from the Datadog Microsoft Teams integration.
    #
    # @param handle_id [String] Your Workflows webhook handle id.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_workflows_webhook_handle_with_http_info(handle_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.delete_workflows_webhook_handle ...'
      end
      # verify the required parameter 'handle_id' is set
      if @api_client.config.client_side_validation && handle_id.nil?
        fail ArgumentError, "Missing the required parameter 'handle_id' when calling MicrosoftTeamsIntegrationAPI.delete_workflows_webhook_handle"
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/workflows-webhook-handles/{handle_id}'.sub('{handle_id}', CGI.escape(handle_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_workflows_webhook_handle,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#delete_workflows_webhook_handle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get channel information by name.
    #
    # @see #get_channel_by_name_with_http_info
    def get_channel_by_name(tenant_name, team_name, channel_name, opts = {})
      data, _status_code, _headers = get_channel_by_name_with_http_info(tenant_name, team_name, channel_name, opts)
      data
    end

    # Get channel information by name.
    #
    # Get the tenant, team, and channel ID of a channel in the Datadog Microsoft Teams integration.
    #
    # @param tenant_name [String] Your tenant name.
    # @param team_name [String] Your team name.
    # @param channel_name [String] Your channel name.
    # @param opts [Hash] the optional parameters
    # @return [Array<(MicrosoftTeamsGetChannelByNameResponse, Integer, Hash)>] MicrosoftTeamsGetChannelByNameResponse data, response status code and response headers
    def get_channel_by_name_with_http_info(tenant_name, team_name, channel_name, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.get_channel_by_name ...'
      end
      # verify the required parameter 'tenant_name' is set
      if @api_client.config.client_side_validation && tenant_name.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_name' when calling MicrosoftTeamsIntegrationAPI.get_channel_by_name"
      end
      # verify the required parameter 'team_name' is set
      if @api_client.config.client_side_validation && team_name.nil?
        fail ArgumentError, "Missing the required parameter 'team_name' when calling MicrosoftTeamsIntegrationAPI.get_channel_by_name"
      end
      # verify the required parameter 'channel_name' is set
      if @api_client.config.client_side_validation && channel_name.nil?
        fail ArgumentError, "Missing the required parameter 'channel_name' when calling MicrosoftTeamsIntegrationAPI.get_channel_by_name"
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/channel/{tenant_name}/{team_name}/{channel_name}'.sub('{tenant_name}', CGI.escape(tenant_name.to_s).gsub('%2F', '/')).sub('{team_name}', CGI.escape(team_name.to_s).gsub('%2F', '/')).sub('{channel_name}', CGI.escape(channel_name.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'MicrosoftTeamsGetChannelByNameResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_channel_by_name,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#get_channel_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get tenant-based handle information.
    #
    # @see #get_tenant_based_handle_with_http_info
    def get_tenant_based_handle(handle_id, opts = {})
      data, _status_code, _headers = get_tenant_based_handle_with_http_info(handle_id, opts)
      data
    end

    # Get tenant-based handle information.
    #
    # Get the tenant, team, and channel information of a tenant-based handle from the Datadog Microsoft Teams integration.
    #
    # @param handle_id [String] Your tenant-based handle id.
    # @param opts [Hash] the optional parameters
    # @return [Array<(MicrosoftTeamsTenantBasedHandleResponse, Integer, Hash)>] MicrosoftTeamsTenantBasedHandleResponse data, response status code and response headers
    def get_tenant_based_handle_with_http_info(handle_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.get_tenant_based_handle ...'
      end
      # verify the required parameter 'handle_id' is set
      if @api_client.config.client_side_validation && handle_id.nil?
        fail ArgumentError, "Missing the required parameter 'handle_id' when calling MicrosoftTeamsIntegrationAPI.get_tenant_based_handle"
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/tenant-based-handles/{handle_id}'.sub('{handle_id}', CGI.escape(handle_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'MicrosoftTeamsTenantBasedHandleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_tenant_based_handle,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#get_tenant_based_handle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Workflows webhook handle information.
    #
    # @see #get_workflows_webhook_handle_with_http_info
    def get_workflows_webhook_handle(handle_id, opts = {})
      data, _status_code, _headers = get_workflows_webhook_handle_with_http_info(handle_id, opts)
      data
    end

    # Get Workflows webhook handle information.
    #
    # Get the name of a Workflows webhook handle from the Datadog Microsoft Teams integration.
    #
    # @param handle_id [String] Your Workflows webhook handle id.
    # @param opts [Hash] the optional parameters
    # @return [Array<(MicrosoftTeamsWorkflowsWebhookHandleResponse, Integer, Hash)>] MicrosoftTeamsWorkflowsWebhookHandleResponse data, response status code and response headers
    def get_workflows_webhook_handle_with_http_info(handle_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.get_workflows_webhook_handle ...'
      end
      # verify the required parameter 'handle_id' is set
      if @api_client.config.client_side_validation && handle_id.nil?
        fail ArgumentError, "Missing the required parameter 'handle_id' when calling MicrosoftTeamsIntegrationAPI.get_workflows_webhook_handle"
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/workflows-webhook-handles/{handle_id}'.sub('{handle_id}', CGI.escape(handle_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'MicrosoftTeamsWorkflowsWebhookHandleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_workflows_webhook_handle,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#get_workflows_webhook_handle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all tenant-based handles.
    #
    # @see #list_tenant_based_handles_with_http_info
    def list_tenant_based_handles(opts = {})
      data, _status_code, _headers = list_tenant_based_handles_with_http_info(opts)
      data
    end

    # Get all tenant-based handles.
    #
    # Get a list of all tenant-based handles from the Datadog Microsoft Teams integration.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :tenant_id Your tenant id.
    # @option opts [String] :name Your tenant-based handle name.
    # @return [Array<(MicrosoftTeamsTenantBasedHandlesResponse, Integer, Hash)>] MicrosoftTeamsTenantBasedHandlesResponse data, response status code and response headers
    def list_tenant_based_handles_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.list_tenant_based_handles ...'
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/tenant-based-handles'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tenant_id'] = opts[:'tenant_id'] if !opts[:'tenant_id'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MicrosoftTeamsTenantBasedHandlesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_tenant_based_handles,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#list_tenant_based_handles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all Workflows webhook handles.
    #
    # @see #list_workflows_webhook_handles_with_http_info
    def list_workflows_webhook_handles(opts = {})
      data, _status_code, _headers = list_workflows_webhook_handles_with_http_info(opts)
      data
    end

    # Get all Workflows webhook handles.
    #
    # Get a list of all Workflows webhook handles from the Datadog Microsoft Teams integration.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :name Your Workflows webhook handle name.
    # @return [Array<(MicrosoftTeamsWorkflowsWebhookHandlesResponse, Integer, Hash)>] MicrosoftTeamsWorkflowsWebhookHandlesResponse data, response status code and response headers
    def list_workflows_webhook_handles_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.list_workflows_webhook_handles ...'
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/workflows-webhook-handles'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MicrosoftTeamsWorkflowsWebhookHandlesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_workflows_webhook_handles,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#list_workflows_webhook_handles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update tenant-based handle.
    #
    # @see #update_tenant_based_handle_with_http_info
    def update_tenant_based_handle(handle_id, body, opts = {})
      data, _status_code, _headers = update_tenant_based_handle_with_http_info(handle_id, body, opts)
      data
    end

    # Update tenant-based handle.
    #
    # Update a tenant-based handle from the Datadog Microsoft Teams integration.
    #
    # @param handle_id [String] Your tenant-based handle id.
    # @param body [MicrosoftTeamsUpdateTenantBasedHandleRequest] Tenant-based handle payload.
    # @param opts [Hash] the optional parameters
    # @return [Array<(MicrosoftTeamsTenantBasedHandleResponse, Integer, Hash)>] MicrosoftTeamsTenantBasedHandleResponse data, response status code and response headers
    def update_tenant_based_handle_with_http_info(handle_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.update_tenant_based_handle ...'
      end
      # verify the required parameter 'handle_id' is set
      if @api_client.config.client_side_validation && handle_id.nil?
        fail ArgumentError, "Missing the required parameter 'handle_id' when calling MicrosoftTeamsIntegrationAPI.update_tenant_based_handle"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MicrosoftTeamsIntegrationAPI.update_tenant_based_handle"
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/tenant-based-handles/{handle_id}'.sub('{handle_id}', CGI.escape(handle_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'MicrosoftTeamsTenantBasedHandleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_tenant_based_handle,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#update_tenant_based_handle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Workflows webhook handle.
    #
    # @see #update_workflows_webhook_handle_with_http_info
    def update_workflows_webhook_handle(handle_id, body, opts = {})
      data, _status_code, _headers = update_workflows_webhook_handle_with_http_info(handle_id, body, opts)
      data
    end

    # Update Workflows webhook handle.
    #
    # Update a Workflows webhook handle from the Datadog Microsoft Teams integration.
    #
    # @param handle_id [String] Your Workflows webhook handle id.
    # @param body [MicrosoftTeamsUpdateWorkflowsWebhookHandleRequest] Workflows Webhook handle payload.
    # @param opts [Hash] the optional parameters
    # @return [Array<(MicrosoftTeamsWorkflowsWebhookHandleResponse, Integer, Hash)>] MicrosoftTeamsWorkflowsWebhookHandleResponse data, response status code and response headers
    def update_workflows_webhook_handle_with_http_info(handle_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrosoftTeamsIntegrationAPI.update_workflows_webhook_handle ...'
      end
      # verify the required parameter 'handle_id' is set
      if @api_client.config.client_side_validation && handle_id.nil?
        fail ArgumentError, "Missing the required parameter 'handle_id' when calling MicrosoftTeamsIntegrationAPI.update_workflows_webhook_handle"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MicrosoftTeamsIntegrationAPI.update_workflows_webhook_handle"
      end
      # resource path
      local_var_path = '/api/v2/integration/ms-teams/configuration/workflows-webhook-handles/{handle_id}'.sub('{handle_id}', CGI.escape(handle_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'MicrosoftTeamsWorkflowsWebhookHandleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_workflows_webhook_handle,
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
        @api_client.config.logger.debug "API called: MicrosoftTeamsIntegrationAPI#update_workflows_webhook_handle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
