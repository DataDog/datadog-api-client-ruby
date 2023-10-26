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
  class AWSIntegrationAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create an AWS integration.
    #
    # @see #create_aws_account_with_http_info
    def create_aws_account(body, opts = {})
      data, _status_code, _headers = create_aws_account_with_http_info(body, opts)
      data
    end

    # Create an AWS integration.
    #
    # Create a Datadog-Amazon Web Services integration.
    # Using the `POST` method updates your integration configuration
    # by adding your new configuration to the existing one in your Datadog organization.
    # A unique AWS Account ID for role based authentication.
    #
    # @param body [AWSAccount] AWS Request Object
    # @param opts [Hash] the optional parameters
    # @return [Array<(AWSAccountCreateResponse, Integer, Hash)>] AWSAccountCreateResponse data, response status code and response headers
    def create_aws_account_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.create_aws_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationAPI.create_aws_account"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws'

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
      return_type = opts[:debug_return_type] || 'AWSAccountCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_aws_account,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#create_aws_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an Amazon EventBridge source.
    #
    # @see #create_aws_event_bridge_source_with_http_info
    def create_aws_event_bridge_source(body, opts = {})
      data, _status_code, _headers = create_aws_event_bridge_source_with_http_info(body, opts)
      data
    end

    # Create an Amazon EventBridge source.
    #
    # Create an Amazon EventBridge source.
    #
    # @param body [AWSEventBridgeCreateRequest] Create an Amazon EventBridge source for an AWS account with a given name and region.
    # @param opts [Hash] the optional parameters
    # @return [Array<(AWSEventBridgeCreateResponse, Integer, Hash)>] AWSEventBridgeCreateResponse data, response status code and response headers
    def create_aws_event_bridge_source_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.create_aws_event_bridge_source ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationAPI.create_aws_event_bridge_source"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws/event_bridge'

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
      return_type = opts[:debug_return_type] || 'AWSEventBridgeCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_aws_event_bridge_source,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#create_aws_event_bridge_source\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set an AWS tag filter.
    #
    # @see #create_aws_tag_filter_with_http_info
    def create_aws_tag_filter(body, opts = {})
      data, _status_code, _headers = create_aws_tag_filter_with_http_info(body, opts)
      data
    end

    # Set an AWS tag filter.
    #
    # Set an AWS tag filter.
    #
    # @param body [AWSTagFilterCreateRequest] Set an AWS tag filter using an `aws_account_identifier`, `namespace`, and filtering string. Namespace options are `application_elb`, `elb`, `lambda`, `network_elb`, `rds`, `sqs`, and `custom`.
    # @param opts [Hash] the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_aws_tag_filter_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.create_aws_tag_filter ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationAPI.create_aws_tag_filter"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws/filtering'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_aws_tag_filter,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#create_aws_tag_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate a new external ID.
    #
    # @see #create_new_aws_external_id_with_http_info
    def create_new_aws_external_id(body, opts = {})
      data, _status_code, _headers = create_new_aws_external_id_with_http_info(body, opts)
      data
    end

    # Generate a new external ID.
    #
    # Generate a new AWS external ID for a given AWS account ID and role name pair.
    #
    # @param body [AWSAccount] Your Datadog role delegation name. For more information about your AWS account Role name, see the [Datadog AWS integration configuration info](https://docs.datadoghq.com/integrations/amazon_web_services/#setup).
    # @param opts [Hash] the optional parameters
    # @return [Array<(AWSAccountCreateResponse, Integer, Hash)>] AWSAccountCreateResponse data, response status code and response headers
    def create_new_aws_external_id_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.create_new_aws_external_id ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationAPI.create_new_aws_external_id"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws/generate_new_external_id'

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
      return_type = opts[:debug_return_type] || 'AWSAccountCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_new_aws_external_id,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#create_new_aws_external_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an AWS integration.
    #
    # @see #delete_aws_account_with_http_info
    def delete_aws_account(body, opts = {})
      data, _status_code, _headers = delete_aws_account_with_http_info(body, opts)
      data
    end

    # Delete an AWS integration.
    #
    # Delete a Datadog-AWS integration matching the specified `account_id` and `role_name parameters`.
    #
    # @param body [AWSAccountDeleteRequest] AWS request object
    # @param opts [Hash] the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_aws_account_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.delete_aws_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationAPI.delete_aws_account"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_aws_account,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#delete_aws_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an Amazon EventBridge source.
    #
    # @see #delete_aws_event_bridge_source_with_http_info
    def delete_aws_event_bridge_source(body, opts = {})
      data, _status_code, _headers = delete_aws_event_bridge_source_with_http_info(body, opts)
      data
    end

    # Delete an Amazon EventBridge source.
    #
    # Delete an Amazon EventBridge source.
    #
    # @param body [AWSEventBridgeDeleteRequest] Delete the Amazon EventBridge source with the given name, region, and associated AWS account.
    # @param opts [Hash] the optional parameters
    # @return [Array<(AWSEventBridgeDeleteResponse, Integer, Hash)>] AWSEventBridgeDeleteResponse data, response status code and response headers
    def delete_aws_event_bridge_source_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.delete_aws_event_bridge_source ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationAPI.delete_aws_event_bridge_source"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws/event_bridge'

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
      return_type = opts[:debug_return_type] || 'AWSEventBridgeDeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_aws_event_bridge_source,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#delete_aws_event_bridge_source\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a tag filtering entry.
    #
    # @see #delete_aws_tag_filter_with_http_info
    def delete_aws_tag_filter(body, opts = {})
      data, _status_code, _headers = delete_aws_tag_filter_with_http_info(body, opts)
      data
    end

    # Delete a tag filtering entry.
    #
    # Delete a tag filtering entry.
    #
    # @param body [AWSTagFilterDeleteRequest] Delete a tag filtering entry for a given AWS account and `dd-aws` namespace.
    # @param opts [Hash] the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_aws_tag_filter_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.delete_aws_tag_filter ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationAPI.delete_aws_tag_filter"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws/filtering'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_aws_tag_filter,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#delete_aws_tag_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List namespace rules.
    #
    # @see #list_available_aws_namespaces_with_http_info
    def list_available_aws_namespaces(opts = {})
      data, _status_code, _headers = list_available_aws_namespaces_with_http_info(opts)
      data
    end

    # List namespace rules.
    #
    # List all namespace rules for a given Datadog-AWS integration. This endpoint takes no arguments.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def list_available_aws_namespaces_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.list_available_aws_namespaces ...'
      end
      # resource path
      local_var_path = '/api/v1/integration/aws/available_namespace_rules'

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
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_available_aws_namespaces,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#list_available_aws_namespaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all AWS integrations.
    #
    # @see #list_aws_accounts_with_http_info
    def list_aws_accounts(opts = {})
      data, _status_code, _headers = list_aws_accounts_with_http_info(opts)
      data
    end

    # List all AWS integrations.
    #
    # List all Datadog-AWS integrations available in your Datadog organization.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :account_id Only return AWS accounts that matches this `account_id`.
    # @option opts [String] :role_name Only return AWS accounts that matches this role_name.
    # @option opts [String] :access_key_id Only return AWS accounts that matches this `access_key_id`.
    # @return [Array<(AWSAccountListResponse, Integer, Hash)>] AWSAccountListResponse data, response status code and response headers
    def list_aws_accounts_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.list_aws_accounts ...'
      end
      # resource path
      local_var_path = '/api/v1/integration/aws'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'role_name'] = opts[:'role_name'] if !opts[:'role_name'].nil?
      query_params[:'access_key_id'] = opts[:'access_key_id'] if !opts[:'access_key_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AWSAccountListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_aws_accounts,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#list_aws_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all Amazon EventBridge sources.
    #
    # @see #list_aws_event_bridge_sources_with_http_info
    def list_aws_event_bridge_sources(opts = {})
      data, _status_code, _headers = list_aws_event_bridge_sources_with_http_info(opts)
      data
    end

    # Get all Amazon EventBridge sources.
    #
    # Get all Amazon EventBridge sources.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(AWSEventBridgeListResponse, Integer, Hash)>] AWSEventBridgeListResponse data, response status code and response headers
    def list_aws_event_bridge_sources_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.list_aws_event_bridge_sources ...'
      end
      # resource path
      local_var_path = '/api/v1/integration/aws/event_bridge'

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
      return_type = opts[:debug_return_type] || 'AWSEventBridgeListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_aws_event_bridge_sources,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#list_aws_event_bridge_sources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all AWS tag filters.
    #
    # @see #list_aws_tag_filters_with_http_info
    def list_aws_tag_filters(account_id, opts = {})
      data, _status_code, _headers = list_aws_tag_filters_with_http_info(account_id, opts)
      data
    end

    # Get all AWS tag filters.
    #
    # Get all AWS tag filters.
    #
    # @param account_id [String] Only return AWS filters that matches this `account_id`.
    # @param opts [Hash] the optional parameters
    # @return [Array<(AWSTagFilterListResponse, Integer, Hash)>] AWSTagFilterListResponse data, response status code and response headers
    def list_aws_tag_filters_with_http_info(account_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.list_aws_tag_filters ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AWSIntegrationAPI.list_aws_tag_filters"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws/filtering'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = account_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AWSTagFilterListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_aws_tag_filters,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#list_aws_tag_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an AWS integration.
    #
    # @see #update_aws_account_with_http_info
    def update_aws_account(body, opts = {})
      data, _status_code, _headers = update_aws_account_with_http_info(body, opts)
      data
    end

    # Update an AWS integration.
    #
    # Update a Datadog-Amazon Web Services integration.
    #
    # @param body [AWSAccount] AWS request object
    # @param opts [Hash] the optional parameters
    # @option opts [String] :account_id Only return AWS accounts that matches this `account_id`.
    # @option opts [String] :role_name Only return AWS accounts that match this `role_name`. Required if `account_id` is specified.
    # @option opts [String] :access_key_id Only return AWS accounts that matches this `access_key_id`. Required if none of the other two options are specified.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_aws_account_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AWSIntegrationAPI.update_aws_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AWSIntegrationAPI.update_aws_account"
      end
      # resource path
      local_var_path = '/api/v1/integration/aws'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'role_name'] = opts[:'role_name'] if !opts[:'role_name'].nil?
      query_params[:'access_key_id'] = opts[:'access_key_id'] if !opts[:'access_key_id'].nil?

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_aws_account,
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
        @api_client.config.logger.debug "API called: AWSIntegrationAPI#update_aws_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
