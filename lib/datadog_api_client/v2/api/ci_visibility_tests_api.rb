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
  class CIVisibilityTestsAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Aggregate tests events.
    #
    # @see #aggregate_ci_app_test_events_with_http_info
    def aggregate_ci_app_test_events(body, opts = {})
      data, _status_code, _headers = aggregate_ci_app_test_events_with_http_info(body, opts)
      data
    end

    # Aggregate tests events.
    #
    # The API endpoint to aggregate CI Visibility test events into buckets of computed metrics and timeseries.
    #
    # @param body [CIAppTestsAggregateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(CIAppTestsAnalyticsAggregateResponse, Integer, Hash)>] CIAppTestsAnalyticsAggregateResponse data, response status code and response headers
    def aggregate_ci_app_test_events_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CIVisibilityTestsAPI.aggregate_ci_app_test_events ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CIVisibilityTestsAPI.aggregate_ci_app_test_events"
      end
      # resource path
      local_var_path = '/api/v2/ci/tests/analytics/aggregate'

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
      return_type = opts[:debug_return_type] || 'CIAppTestsAnalyticsAggregateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :aggregate_ci_app_test_events,
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
        @api_client.config.logger.debug "API called: CIVisibilityTestsAPI#aggregate_ci_app_test_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of tests events.
    #
    # @see #list_ci_app_test_events_with_http_info
    def list_ci_app_test_events(opts = {})
      data, _status_code, _headers = list_ci_app_test_events_with_http_info(opts)
      data
    end

    # Get a list of tests events.
    #
    # List endpoint returns CI Visibility test events that match a [log search query](https://docs.datadoghq.com/logs/explorer/search_syntax/).
    # [Results are paginated similarly to logs](https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination).
    #
    # Use this endpoint to see your latest test events.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :filter_query Search query following log syntax.
    # @option opts [Time] :filter_from Minimum timestamp for requested events.
    # @option opts [Time] :filter_to Maximum timestamp for requested events.
    # @option opts [CIAppSort] :sort Order of events in results.
    # @option opts [String] :page_cursor List following results with a cursor provided in the previous query.
    # @option opts [Integer] :page_limit Maximum number of events in the response.
    # @return [Array<(CIAppTestEventsResponse, Integer, Hash)>] CIAppTestEventsResponse data, response status code and response headers
    def list_ci_app_test_events_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CIVisibilityTestsAPI.list_ci_app_test_events ...'
      end
      allowable_values = ['timestamp', '-timestamp']
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page_limit'].nil? && opts[:'page_limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_limit"]" when calling CIVisibilityTestsAPI.list_ci_app_test_events, must be smaller than or equal to 1000.'
      end
      # resource path
      local_var_path = '/api/v2/ci/tests/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[query]'] = opts[:'filter_query'] if !opts[:'filter_query'].nil?
      query_params[:'filter[from]'] = opts[:'filter_from'] if !opts[:'filter_from'].nil?
      query_params[:'filter[to]'] = opts[:'filter_to'] if !opts[:'filter_to'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page[cursor]'] = opts[:'page_cursor'] if !opts[:'page_cursor'].nil?
      query_params[:'page[limit]'] = opts[:'page_limit'] if !opts[:'page_limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CIAppTestEventsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_ci_app_test_events,
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
        @api_client.config.logger.debug "API called: CIVisibilityTestsAPI#list_ci_app_test_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of tests events.
    #
    # Provide a paginated version of {#list_ci_app_test_events}, returning all items.
    #
    # To use it you need to use a block: list_ci_app_test_events_with_pagination { |item| p item }
    #
    # @yield [CIAppTestEvent] Paginated items
    def list_ci_app_test_events_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "page_limit", 10)
        @api_client.set_attribute_from_path(api_version, opts, "page_limit", Integer, page_size)
        while true do
            response = list_ci_app_test_events(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "page_cursor", String, @api_client.get_attribute_from_path(response, "meta.page.after"))
        end
    end

    # Search tests events.
    #
    # @see #search_ci_app_test_events_with_http_info
    def search_ci_app_test_events(opts = {})
      data, _status_code, _headers = search_ci_app_test_events_with_http_info(opts)
      data
    end

    # Search tests events.
    #
    # List endpoint returns CI Visibility test events that match a [log search query](https://docs.datadoghq.com/logs/explorer/search_syntax/).
    # [Results are paginated similarly to logs](https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination).
    #
    # Use this endpoint to build complex events filtering and search.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [CIAppTestEventsRequest] :body 
    # @return [Array<(CIAppTestEventsResponse, Integer, Hash)>] CIAppTestEventsResponse data, response status code and response headers
    def search_ci_app_test_events_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CIVisibilityTestsAPI.search_ci_app_test_events ...'
      end
      # resource path
      local_var_path = '/api/v2/ci/tests/events/search'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'CIAppTestEventsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :search_ci_app_test_events,
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
        @api_client.config.logger.debug "API called: CIVisibilityTestsAPI#search_ci_app_test_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search tests events.
    #
    # Provide a paginated version of {#search_ci_app_test_events}, returning all items.
    #
    # To use it you need to use a block: search_ci_app_test_events_with_pagination { |item| p item }
    #
    # @yield [CIAppTestEvent] Paginated items
    def search_ci_app_test_events_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "body.page.limit", 10)
        @api_client.set_attribute_from_path(api_version, opts, "body.page.limit", CIAppTestEventsRequest, page_size)
        while true do
            response = search_ci_app_test_events(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "body.page.cursor", CIAppTestEventsRequest, @api_client.get_attribute_from_path(response, "meta.page.after"))
        end
    end
  end
end
