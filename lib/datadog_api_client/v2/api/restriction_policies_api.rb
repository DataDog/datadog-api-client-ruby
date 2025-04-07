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
  class RestrictionPoliciesAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Delete a restriction policy.
    #
    # @see #delete_restriction_policy_with_http_info
    def delete_restriction_policy(resource_id, opts = {})
      delete_restriction_policy_with_http_info(resource_id, opts)
      nil
    end

    # Delete a restriction policy.
    #
    # Deletes the restriction policy associated with a specified resource.
    #
    # @param resource_id [String] Identifier, formatted as `type:id`. Supported types: `connection`, `dashboard`, `integration-account`, `integration-webhook`, `notebook`, `reference-table`, `security-rule`, `slo`, `workflow`, `app-builder-app`, `connection`, `connection-group`.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_restriction_policy_with_http_info(resource_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestrictionPoliciesAPI.delete_restriction_policy ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling RestrictionPoliciesAPI.delete_restriction_policy"
      end
      # resource path
      local_var_path = '/api/v2/restriction_policy/{resource_id}'.sub('{resource_id}', CGI.escape(resource_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_restriction_policy,
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
        @api_client.config.logger.debug "API called: RestrictionPoliciesAPI#delete_restriction_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a restriction policy.
    #
    # @see #get_restriction_policy_with_http_info
    def get_restriction_policy(resource_id, opts = {})
      data, _status_code, _headers = get_restriction_policy_with_http_info(resource_id, opts)
      data
    end

    # Get a restriction policy.
    #
    # Retrieves the restriction policy associated with a specified resource.
    #
    # @param resource_id [String] Identifier, formatted as `type:id`. Supported types: `connection`, `dashboard`, `integration-account`, `integration-webhook`, `notebook`, `reference-table`, `security-rule`, `slo`, `workflow`, `app-builder-app`, `connection`, `connection-group`.
    # @param opts [Hash] the optional parameters
    # @return [Array<(RestrictionPolicyResponse, Integer, Hash)>] RestrictionPolicyResponse data, response status code and response headers
    def get_restriction_policy_with_http_info(resource_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestrictionPoliciesAPI.get_restriction_policy ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling RestrictionPoliciesAPI.get_restriction_policy"
      end
      # resource path
      local_var_path = '/api/v2/restriction_policy/{resource_id}'.sub('{resource_id}', CGI.escape(resource_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'RestrictionPolicyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_restriction_policy,
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
        @api_client.config.logger.debug "API called: RestrictionPoliciesAPI#get_restriction_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a restriction policy.
    #
    # @see #update_restriction_policy_with_http_info
    def update_restriction_policy(resource_id, body, opts = {})
      data, _status_code, _headers = update_restriction_policy_with_http_info(resource_id, body, opts)
      data
    end

    # Update a restriction policy.
    #
    # Updates the restriction policy associated with a resource.
    #
    # #### Supported resources
    # Restriction policies can be applied to the following resources:
    # - Dashboards: `dashboard`
    # - Integration Accounts: `integration-account`
    # - Integration Webhooks: `integration-webhook`
    # - Notebooks: `notebook`
    # - Powerpacks: `powerpack`
    # - Reference Tables: `reference-table`
    # - Security Rules: `security-rule`
    # - Service Level Objectives: `slo`
    # - Synthetic Global Variables: `synthetics-global-variable`
    # - Synthetic Tests: `synthetics-test`
    # - Synthetic Private Locations: `synthetics-private-location`
    # - Monitors: `monitor`
    # - Workflows: `workflow`
    # - App Builder Apps: `app-builder-app`
    # - Connections: `connection`
    # - Connection Groups: `connection-group`
    #
    # #### Supported relations for resources
    # Resource Type               | Supported Relations
    # ----------------------------|--------------------------
    # Dashboards                  | `viewer`, `editor`
    # Integration Accounts        | `viewer`, `editor`
    # Integration Webhooks        | `viewer`, `editor`
    # Notebooks                   | `viewer`, `editor`
    # Powerpacks                  | `viewer`, `editor`
    # Security Rules              | `viewer`, `editor`
    # Service Level Objectives    | `viewer`, `editor`
    # Synthetic Global Variables  | `viewer`, `editor`
    # Synthetic Tests             | `viewer`, `editor`
    # Synthetic Private Locations | `viewer`, `editor`
    # Monitors                    | `viewer`, `editor`
    # Reference Tables            | `viewer`, `editor`
    # Workflows                   | `viewer`, `runner`, `editor`
    # App Builder Apps            | `viewer`, `editor`
    # Connections                 | `viewer`, `resolver`, `editor`
    # Connection Groups           | `viewer`, `editor`
    #
    # @param resource_id [String] Identifier, formatted as `type:id`. Supported types: `connection`, `dashboard`, `integration-account`, `integration-webhook`, `notebook`, `reference-table`, `security-rule`, `slo`, `workflow`, `app-builder-app`, `connection`, `connection-group`.
    # @param body [RestrictionPolicyUpdateRequest] Restriction policy payload
    # @param opts [Hash] the optional parameters
    # @option opts [Boolean] :allow_self_lockout Allows admins (users with the `user_access_manage` permission) to remove their own access from the resource if set to `true`. By default, this is set to `false`, preventing admins from locking themselves out.
    # @return [Array<(RestrictionPolicyResponse, Integer, Hash)>] RestrictionPolicyResponse data, response status code and response headers
    def update_restriction_policy_with_http_info(resource_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestrictionPoliciesAPI.update_restriction_policy ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling RestrictionPoliciesAPI.update_restriction_policy"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RestrictionPoliciesAPI.update_restriction_policy"
      end
      # resource path
      local_var_path = '/api/v2/restriction_policy/{resource_id}'.sub('{resource_id}', CGI.escape(resource_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'allow_self_lockout'] = opts[:'allow_self_lockout'] if !opts[:'allow_self_lockout'].nil?

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
      return_type = opts[:debug_return_type] || 'RestrictionPolicyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :update_restriction_policy,
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
        @api_client.config.logger.debug "API called: RestrictionPoliciesAPI#update_restriction_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
