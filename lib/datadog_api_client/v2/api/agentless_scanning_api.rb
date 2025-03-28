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
  class AgentlessScanningAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Post an AWS on demand task.
    #
    # @see #create_aws_on_demand_task_with_http_info
    def create_aws_on_demand_task(body, opts = {})
      data, _status_code, _headers = create_aws_on_demand_task_with_http_info(body, opts)
      data
    end

    # Post an AWS on demand task.
    #
    # Trigger the scan of an AWS resource with a high priority. Agentless scanning must be activated for the AWS account containing the resource to scan.
    #
    # @param body [AwsOnDemandCreateRequest] The definition of the on demand task.
    # @param opts [Hash] the optional parameters
    # @return [Array<(AwsOnDemandResponse, Integer, Hash)>] AwsOnDemandResponse data, response status code and response headers
    def create_aws_on_demand_task_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentlessScanningAPI.create_aws_on_demand_task ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AgentlessScanningAPI.create_aws_on_demand_task"
      end
      # resource path
      local_var_path = '/api/v2/agentless_scanning/ondemand/aws'

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
      return_type = opts[:debug_return_type] || 'AwsOnDemandResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_aws_on_demand_task,
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
        @api_client.config.logger.debug "API called: AgentlessScanningAPI#create_aws_on_demand_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Post AWS Scan Options.
    #
    # @see #create_aws_scan_options_with_http_info
    def create_aws_scan_options(body, opts = {})
      data, _status_code, _headers = create_aws_scan_options_with_http_info(body, opts)
      data
    end

    # Post AWS Scan Options.
    #
    # Activate Agentless scan options for an AWS account.
    #
    # @param body [AwsScanOptionsCreateRequest] The definition of the new scan options.
    # @param opts [Hash] the optional parameters
    # @return [Array<(AwsScanOptionsResponse, Integer, Hash)>] AwsScanOptionsResponse data, response status code and response headers
    def create_aws_scan_options_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentlessScanningAPI.create_aws_scan_options ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AgentlessScanningAPI.create_aws_scan_options"
      end
      # resource path
      local_var_path = '/api/v2/agentless_scanning/accounts/aws'

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
      return_type = opts[:debug_return_type] || 'AwsScanOptionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_aws_scan_options,
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
        @api_client.config.logger.debug "API called: AgentlessScanningAPI#create_aws_scan_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete AWS Scan Options.
    #
    # @see #delete_aws_scan_options_with_http_info
    def delete_aws_scan_options(account_id, opts = {})
      delete_aws_scan_options_with_http_info(account_id, opts)
      nil
    end

    # Delete AWS Scan Options.
    #
    # Delete Agentless scan options for an AWS account.
    #
    # @param account_id [String] The ID of an AWS account.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_aws_scan_options_with_http_info(account_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentlessScanningAPI.delete_aws_scan_options ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AgentlessScanningAPI.delete_aws_scan_options"
      end
      # resource path
      local_var_path = '/api/v2/agentless_scanning/accounts/aws/{account_id}'.sub('{account_id}', CGI.escape(account_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_aws_scan_options,
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
        @api_client.config.logger.debug "API called: AgentlessScanningAPI#delete_aws_scan_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get AWS On Demand task by id.
    #
    # @see #get_aws_on_demand_task_with_http_info
    def get_aws_on_demand_task(task_id, opts = {})
      data, _status_code, _headers = get_aws_on_demand_task_with_http_info(task_id, opts)
      data
    end

    # Get AWS On Demand task by id.
    #
    # Fetch the data of a specific on demand task.
    #
    # @param task_id [String] The UUID of the task.
    # @param opts [Hash] the optional parameters
    # @return [Array<(AwsOnDemandResponse, Integer, Hash)>] AwsOnDemandResponse data, response status code and response headers
    def get_aws_on_demand_task_with_http_info(task_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentlessScanningAPI.get_aws_on_demand_task ...'
      end
      # verify the required parameter 'task_id' is set
      if @api_client.config.client_side_validation && task_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_id' when calling AgentlessScanningAPI.get_aws_on_demand_task"
      end
      # resource path
      local_var_path = '/api/v2/agentless_scanning/ondemand/aws/{task_id}'.sub('{task_id}', CGI.escape(task_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'AwsOnDemandResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_aws_on_demand_task,
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
        @api_client.config.logger.debug "API called: AgentlessScanningAPI#get_aws_on_demand_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get AWS On Demand tasks.
    #
    # @see #list_aws_on_demand_tasks_with_http_info
    def list_aws_on_demand_tasks(opts = {})
      data, _status_code, _headers = list_aws_on_demand_tasks_with_http_info(opts)
      data
    end

    # Get AWS On Demand tasks.
    #
    # Fetches the most recent 1000 AWS on demand tasks.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(AwsOnDemandListResponse, Integer, Hash)>] AwsOnDemandListResponse data, response status code and response headers
    def list_aws_on_demand_tasks_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentlessScanningAPI.list_aws_on_demand_tasks ...'
      end
      # resource path
      local_var_path = '/api/v2/agentless_scanning/ondemand/aws'

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
      return_type = opts[:debug_return_type] || 'AwsOnDemandListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_aws_on_demand_tasks,
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
        @api_client.config.logger.debug "API called: AgentlessScanningAPI#list_aws_on_demand_tasks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get AWS Scan Options.
    #
    # @see #list_aws_scan_options_with_http_info
    def list_aws_scan_options(opts = {})
      data, _status_code, _headers = list_aws_scan_options_with_http_info(opts)
      data
    end

    # Get AWS Scan Options.
    #
    # Fetches the scan options configured for AWS accounts.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(AwsScanOptionsListResponse, Integer, Hash)>] AwsScanOptionsListResponse data, response status code and response headers
    def list_aws_scan_options_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentlessScanningAPI.list_aws_scan_options ...'
      end
      # resource path
      local_var_path = '/api/v2/agentless_scanning/accounts/aws'

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
      return_type = opts[:debug_return_type] || 'AwsScanOptionsListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_aws_scan_options,
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
        @api_client.config.logger.debug "API called: AgentlessScanningAPI#list_aws_scan_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch AWS Scan Options.
    #
    # @see #update_aws_scan_options_with_http_info
    def update_aws_scan_options(account_id, body, opts = {})
      update_aws_scan_options_with_http_info(account_id, body, opts)
      nil
    end

    # Patch AWS Scan Options.
    #
    # Update the Agentless scan options for an activated account.
    #
    # @param account_id [String] The ID of an AWS account.
    # @param body [AwsScanOptionsUpdateRequest] New definition of the scan options.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_aws_scan_options_with_http_info(account_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentlessScanningAPI.update_aws_scan_options ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AgentlessScanningAPI.update_aws_scan_options"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AgentlessScanningAPI.update_aws_scan_options"
      end
      # resource path
      local_var_path = '/api/v2/agentless_scanning/accounts/aws/{account_id}'.sub('{account_id}', CGI.escape(account_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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
        :operation => :update_aws_scan_options,
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
        @api_client.config.logger.debug "API called: AgentlessScanningAPI#update_aws_scan_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
