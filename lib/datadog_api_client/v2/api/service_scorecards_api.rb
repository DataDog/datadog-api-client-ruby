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
  class ServiceScorecardsAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create outcomes batch.
    #
    # @see #create_scorecard_outcomes_batch_with_http_info
    def create_scorecard_outcomes_batch(body, opts = {})
      data, _status_code, _headers = create_scorecard_outcomes_batch_with_http_info(body, opts)
      data
    end

    # Create outcomes batch.
    #
    # Sets multiple service-rule outcomes in a single batched request.
    #
    # @param body [OutcomesBatchRequest] Set of scorecard outcomes.
    # @param opts [Hash] the optional parameters
    # @return [Array<(OutcomesBatchResponse, Integer, Hash)>] OutcomesBatchResponse data, response status code and response headers
    def create_scorecard_outcomes_batch_with_http_info(body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.create_scorecard_outcomes_batch".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.create_scorecard_outcomes_batch")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.create_scorecard_outcomes_batch"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceScorecardsAPI.create_scorecard_outcomes_batch ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceScorecardsAPI.create_scorecard_outcomes_batch"
      end
      # resource path
      local_var_path = '/api/v2/scorecard/outcomes/batch'

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
      return_type = opts[:debug_return_type] || 'OutcomesBatchResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_scorecard_outcomes_batch,
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
        @api_client.config.logger.debug "API called: ServiceScorecardsAPI#create_scorecard_outcomes_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new rule.
    #
    # @see #create_scorecard_rule_with_http_info
    def create_scorecard_rule(body, opts = {})
      data, _status_code, _headers = create_scorecard_rule_with_http_info(body, opts)
      data
    end

    # Create a new rule.
    #
    # Creates a new rule.
    #
    # @param body [CreateRuleRequest] Rule attributes.
    # @param opts [Hash] the optional parameters
    # @return [Array<(CreateRuleResponse, Integer, Hash)>] CreateRuleResponse data, response status code and response headers
    def create_scorecard_rule_with_http_info(body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.create_scorecard_rule".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.create_scorecard_rule")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.create_scorecard_rule"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceScorecardsAPI.create_scorecard_rule ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceScorecardsAPI.create_scorecard_rule"
      end
      # resource path
      local_var_path = '/api/v2/scorecard/rules'

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
      return_type = opts[:debug_return_type] || 'CreateRuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_scorecard_rule,
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
        @api_client.config.logger.debug "API called: ServiceScorecardsAPI#create_scorecard_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a rule.
    #
    # @see #delete_scorecard_rule_with_http_info
    def delete_scorecard_rule(rule_id, opts = {})
      delete_scorecard_rule_with_http_info(rule_id, opts)
      nil
    end

    # Delete a rule.
    #
    # Deletes a single rule.
    #
    # @param rule_id [String] The ID of the rule.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_scorecard_rule_with_http_info(rule_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.delete_scorecard_rule".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.delete_scorecard_rule")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.delete_scorecard_rule"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceScorecardsAPI.delete_scorecard_rule ...'
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling ServiceScorecardsAPI.delete_scorecard_rule"
      end
      # resource path
      local_var_path = '/api/v2/scorecard/rules/{rule_id}'.sub('{rule_id}', CGI.escape(rule_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_scorecard_rule,
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
        @api_client.config.logger.debug "API called: ServiceScorecardsAPI#delete_scorecard_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all rule outcomes.
    #
    # @see #list_scorecard_outcomes_with_http_info
    def list_scorecard_outcomes(opts = {})
      data, _status_code, _headers = list_scorecard_outcomes_with_http_info(opts)
      data
    end

    # List all rule outcomes.
    #
    # Fetches all rule outcomes.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Integer] :page_size Size for a given page. The maximum allowed value is 100.
    # @option opts [Integer] :page_offset Specific offset to use as the beginning of the returned page.
    # @option opts [String] :include Include related rule details in the response.
    # @option opts [String] :fields_outcome Return only specified values in the outcome attributes.
    # @option opts [String] :fields_rule Return only specified values in the included rule details.
    # @option opts [String] :filter_outcome_service_name Filter the outcomes on a specific service name.
    # @option opts [String] :filter_outcome_state Filter the outcomes by a specific state.
    # @option opts [Boolean] :filter_rule_enabled Filter outcomes on whether a rule is enabled/disabled.
    # @option opts [String] :filter_rule_id Filter outcomes based on rule ID.
    # @option opts [String] :filter_rule_name Filter outcomes based on rule name.
    # @return [Array<(OutcomesResponse, Integer, Hash)>] OutcomesResponse data, response status code and response headers
    def list_scorecard_outcomes_with_http_info(opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.list_scorecard_outcomes".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.list_scorecard_outcomes")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.list_scorecard_outcomes"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceScorecardsAPI.list_scorecard_outcomes ...'
      end
      # resource path
      local_var_path = '/api/v2/scorecard/outcomes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[offset]'] = opts[:'page_offset'] if !opts[:'page_offset'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'fields[outcome]'] = opts[:'fields_outcome'] if !opts[:'fields_outcome'].nil?
      query_params[:'fields[rule]'] = opts[:'fields_rule'] if !opts[:'fields_rule'].nil?
      query_params[:'filter[outcome][service_name]'] = opts[:'filter_outcome_service_name'] if !opts[:'filter_outcome_service_name'].nil?
      query_params[:'filter[outcome][state]'] = opts[:'filter_outcome_state'] if !opts[:'filter_outcome_state'].nil?
      query_params[:'filter[rule][enabled]'] = opts[:'filter_rule_enabled'] if !opts[:'filter_rule_enabled'].nil?
      query_params[:'filter[rule][id]'] = opts[:'filter_rule_id'] if !opts[:'filter_rule_id'].nil?
      query_params[:'filter[rule][name]'] = opts[:'filter_rule_name'] if !opts[:'filter_rule_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OutcomesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_scorecard_outcomes,
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
        @api_client.config.logger.debug "API called: ServiceScorecardsAPI#list_scorecard_outcomes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all rule outcomes.
    #
    # Provide a paginated version of {#list_scorecard_outcomes}, returning all items.
    #
    # To use it you need to use a block: list_scorecard_outcomes_with_pagination { |item| p item }
    #
    # @yield [OutcomesResponseDataItem] Paginated items
    def list_scorecard_outcomes_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "page_size", 10)
        @api_client.set_attribute_from_path(api_version, opts, "page_size", Integer, page_size)
        while true do
            response = list_scorecard_outcomes(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "page_offset", Integer, @api_client.get_attribute_from_path(opts, "page_offset", 0) + page_size)
        end
    end

    # List all rules.
    #
    # @see #list_scorecard_rules_with_http_info
    def list_scorecard_rules(opts = {})
      data, _status_code, _headers = list_scorecard_rules_with_http_info(opts)
      data
    end

    # List all rules.
    #
    # Fetch all rules.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Integer] :page_size Size for a given page. The maximum allowed value is 100.
    # @option opts [Integer] :page_offset Specific offset to use as the beginning of the returned page.
    # @option opts [String] :include Include related scorecard details in the response.
    # @option opts [String] :filter_rule_id Filter the rules on a rule ID.
    # @option opts [Boolean] :filter_rule_enabled Filter for enabled rules only.
    # @option opts [Boolean] :filter_rule_custom Filter for custom rules only.
    # @option opts [String] :filter_rule_name Filter rules on the rule name.
    # @option opts [String] :filter_rule_description Filter rules on the rule description.
    # @option opts [String] :fields_rule Return only specific fields in the response for rule attributes.
    # @option opts [String] :fields_scorecard Return only specific fields in the included response for scorecard attributes.
    # @return [Array<(ListRulesResponse, Integer, Hash)>] ListRulesResponse data, response status code and response headers
    def list_scorecard_rules_with_http_info(opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.list_scorecard_rules".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.list_scorecard_rules")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.list_scorecard_rules"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceScorecardsAPI.list_scorecard_rules ...'
      end
      # resource path
      local_var_path = '/api/v2/scorecard/rules'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[offset]'] = opts[:'page_offset'] if !opts[:'page_offset'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'filter[rule][id]'] = opts[:'filter_rule_id'] if !opts[:'filter_rule_id'].nil?
      query_params[:'filter[rule][enabled]'] = opts[:'filter_rule_enabled'] if !opts[:'filter_rule_enabled'].nil?
      query_params[:'filter[rule][custom]'] = opts[:'filter_rule_custom'] if !opts[:'filter_rule_custom'].nil?
      query_params[:'filter[rule][name]'] = opts[:'filter_rule_name'] if !opts[:'filter_rule_name'].nil?
      query_params[:'filter[rule][description]'] = opts[:'filter_rule_description'] if !opts[:'filter_rule_description'].nil?
      query_params[:'fields[rule]'] = opts[:'fields_rule'] if !opts[:'fields_rule'].nil?
      query_params[:'fields[scorecard]'] = opts[:'fields_scorecard'] if !opts[:'fields_scorecard'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListRulesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_scorecard_rules,
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
        @api_client.config.logger.debug "API called: ServiceScorecardsAPI#list_scorecard_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all rules.
    #
    # Provide a paginated version of {#list_scorecard_rules}, returning all items.
    #
    # To use it you need to use a block: list_scorecard_rules_with_pagination { |item| p item }
    #
    # @yield [ListRulesResponseDataItem] Paginated items
    def list_scorecard_rules_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "page_size", 10)
        @api_client.set_attribute_from_path(api_version, opts, "page_size", Integer, page_size)
        while true do
            response = list_scorecard_rules(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "page_offset", Integer, @api_client.get_attribute_from_path(opts, "page_offset", 0) + page_size)
        end
    end

    # Update an existing rule.
    #
    # @see #update_scorecard_rule_with_http_info
    def update_scorecard_rule(rule_id, body, opts = {})
      data, _status_code, _headers = update_scorecard_rule_with_http_info(rule_id, body, opts)
      data
    end

    # Update an existing rule.
    #
    # Updates an existing rule.
    #
    # @param rule_id [String] The ID of the rule.
    # @param body [UpdateRuleRequest] Rule attributes.
    # @param opts [Hash] the optional parameters
    # @return [Array<(UpdateRuleResponse, Integer, Hash)>] UpdateRuleResponse data, response status code and response headers
    def update_scorecard_rule_with_http_info(rule_id, body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.update_scorecard_rule".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.update_scorecard_rule")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.update_scorecard_rule"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceScorecardsAPI.update_scorecard_rule ...'
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling ServiceScorecardsAPI.update_scorecard_rule"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceScorecardsAPI.update_scorecard_rule"
      end
      # resource path
      local_var_path = '/api/v2/scorecard/rules/{rule_id}'.sub('{rule_id}', CGI.escape(rule_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'UpdateRuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :update_scorecard_rule,
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
        @api_client.config.logger.debug "API called: ServiceScorecardsAPI#update_scorecard_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
