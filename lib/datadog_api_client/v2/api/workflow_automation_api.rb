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
  class WorkflowAutomationAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Cancel a workflow instance.
    #
    # @see #cancel_workflow_instance_with_http_info
    def cancel_workflow_instance(workflow_id, instance_id, opts = {})
      data, _status_code, _headers = cancel_workflow_instance_with_http_info(workflow_id, instance_id, opts)
      data
    end

    # Cancel a workflow instance.
    #
    # Cancels a specific execution of a given workflow. This API requires an application key scoped with the workflows_run permission.
    #
    # @param workflow_id [String] The ID of the workflow.
    # @param instance_id [String] The ID of the workflow instance.
    # @param opts [Hash] the optional parameters
    # @return [Array<(WorklflowCancelInstanceResponse, Integer, Hash)>] WorklflowCancelInstanceResponse data, response status code and response headers
    def cancel_workflow_instance_with_http_info(workflow_id, instance_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowAutomationAPI.cancel_workflow_instance ...'
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowAutomationAPI.cancel_workflow_instance"
      end
      # verify the required parameter 'instance_id' is set
      if @api_client.config.client_side_validation && instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'instance_id' when calling WorkflowAutomationAPI.cancel_workflow_instance"
      end
      # resource path
      local_var_path = '/api/v2/workflows/{workflow_id}/instances/{instance_id}/cancel'.sub('{workflow_id}', CGI.escape(workflow_id.to_s).gsub('%2F', '/')).sub('{instance_id}', CGI.escape(instance_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'WorklflowCancelInstanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :cancel_workflow_instance,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Put, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowAutomationAPI#cancel_workflow_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute a workflow.
    #
    # @see #create_workflow_instance_with_http_info
    def create_workflow_instance(workflow_id, body, opts = {})
      data, _status_code, _headers = create_workflow_instance_with_http_info(workflow_id, body, opts)
      data
    end

    # Execute a workflow.
    #
    # Execute the given workflow. This API requires an application key scoped with the workflows_run permission.
    #
    # @param workflow_id [String] The ID of the workflow.
    # @param body [WorkflowInstanceCreateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(WorkflowInstanceCreateResponse, Integer, Hash)>] WorkflowInstanceCreateResponse data, response status code and response headers
    def create_workflow_instance_with_http_info(workflow_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowAutomationAPI.create_workflow_instance ...'
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowAutomationAPI.create_workflow_instance"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling WorkflowAutomationAPI.create_workflow_instance"
      end
      # resource path
      local_var_path = '/api/v2/workflows/{workflow_id}/instances'.sub('{workflow_id}', CGI.escape(workflow_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'WorkflowInstanceCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_workflow_instance,
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
        @api_client.config.logger.debug "API called: WorkflowAutomationAPI#create_workflow_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a workflow instance.
    #
    # @see #get_workflow_instance_with_http_info
    def get_workflow_instance(workflow_id, instance_id, opts = {})
      data, _status_code, _headers = get_workflow_instance_with_http_info(workflow_id, instance_id, opts)
      data
    end

    # Get a workflow instance.
    #
    # Get a specific execution of a given workflow. This API requires an application key scoped with the workflows_read permission.
    #
    # @param workflow_id [String] The ID of the workflow.
    # @param instance_id [String] The ID of the workflow instance.
    # @param opts [Hash] the optional parameters
    # @return [Array<(WorklflowGetInstanceResponse, Integer, Hash)>] WorklflowGetInstanceResponse data, response status code and response headers
    def get_workflow_instance_with_http_info(workflow_id, instance_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowAutomationAPI.get_workflow_instance ...'
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowAutomationAPI.get_workflow_instance"
      end
      # verify the required parameter 'instance_id' is set
      if @api_client.config.client_side_validation && instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'instance_id' when calling WorkflowAutomationAPI.get_workflow_instance"
      end
      # resource path
      local_var_path = '/api/v2/workflows/{workflow_id}/instances/{instance_id}'.sub('{workflow_id}', CGI.escape(workflow_id.to_s).gsub('%2F', '/')).sub('{instance_id}', CGI.escape(instance_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'WorklflowGetInstanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_workflow_instance,
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
        @api_client.config.logger.debug "API called: WorkflowAutomationAPI#get_workflow_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List workflow instances.
    #
    # @see #list_workflow_instances_with_http_info
    def list_workflow_instances(workflow_id, opts = {})
      data, _status_code, _headers = list_workflow_instances_with_http_info(workflow_id, opts)
      data
    end

    # List workflow instances.
    #
    # List all instances of a given workflow. This API requires an application key scoped with the workflows_read permission.
    #
    # @param workflow_id [String] The ID of the workflow.
    # @param opts [Hash] the optional parameters
    # @option opts [Integer] :page_size Size for a given page. The maximum allowed value is 100.
    # @option opts [Integer] :page_number Specific page number to return.
    # @return [Array<(WorkflowListInstancesResponse, Integer, Hash)>] WorkflowListInstancesResponse data, response status code and response headers
    def list_workflow_instances_with_http_info(workflow_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowAutomationAPI.list_workflow_instances ...'
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowAutomationAPI.list_workflow_instances"
      end
      # resource path
      local_var_path = '/api/v2/workflows/{workflow_id}/instances'.sub('{workflow_id}', CGI.escape(workflow_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowListInstancesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_workflow_instances,
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
        @api_client.config.logger.debug "API called: WorkflowAutomationAPI#list_workflow_instances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
