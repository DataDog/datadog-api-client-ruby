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
  class SpansAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Aggregate spans.
    #
    # @see #aggregate_spans_with_http_info
    def aggregate_spans(body, opts = {})
      data, _status_code, _headers = aggregate_spans_with_http_info(body, opts)
      data
    end

    # Aggregate spans.
    #
    # The API endpoint to aggregate spans into buckets and compute metrics and timeseries.
    # This endpoint is rate limited to `300` requests per hour.
    #
    # @param body [SpansAggregateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(SpansAggregateResponse, Integer, Hash)>] SpansAggregateResponse data, response status code and response headers
    def aggregate_spans_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpansAPI.aggregate_spans ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SpansAPI.aggregate_spans"
      end
      # resource path
      local_var_path = '/api/v2/spans/analytics/aggregate'

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
      return_type = opts[:debug_return_type] || 'SpansAggregateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :aggregate_spans,
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
        @api_client.config.logger.debug "API called: SpansAPI#aggregate_spans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search spans.
    #
    # @see #list_spans_with_http_info
    def list_spans(body, opts = {})
      data, _status_code, _headers = list_spans_with_http_info(body, opts)
      data
    end

    # Search spans.
    #
    # List endpoint returns spans that match a span search query.
    # [Results are paginated][1].
    #
    # Use this endpoint to build complex spans filtering and search.
    # This endpoint is rate limited to `300` requests per hour.
    #
    # [1]: /logs/guide/collect-multiple-logs-with-pagination?tab=v2api
    #
    # @param body [SpansListRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(SpansListResponse, Integer, Hash)>] SpansListResponse data, response status code and response headers
    def list_spans_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpansAPI.list_spans ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SpansAPI.list_spans"
      end
      # resource path
      local_var_path = '/api/v2/spans/events/search'

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
      return_type = opts[:debug_return_type] || 'SpansListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_spans,
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
        @api_client.config.logger.debug "API called: SpansAPI#list_spans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search spans.
    #
    # Provide a paginated version of {#list_spans}, returning all items.
    #
    # To use it you need to use a block: list_spans_with_pagination { |item| p item }
    #
    # @yield [Span] Paginated items
    def list_spans_with_pagination(body, opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(body, "data.attributes.page.limit", 10)
        @api_client.set_attribute_from_path(api_version, body, "data.attributes.page.limit", SpansListRequestData, page_size)
        while true do
            response = list_spans(body, opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, body, "data.attributes.page.cursor", SpansListRequestData, @api_client.get_attribute_from_path(response, "meta.page.after"))
        end
    end

    # Get a list of spans.
    #
    # @see #list_spans_get_with_http_info
    def list_spans_get(opts = {})
      data, _status_code, _headers = list_spans_get_with_http_info(opts)
      data
    end

    # Get a list of spans.
    #
    # List endpoint returns spans that match a span search query.
    # [Results are paginated][1].
    #
    # Use this endpoint to see your latest spans.
    # This endpoint is rate limited to `300` requests per hour.
    #
    # [1]: /logs/guide/collect-multiple-logs-with-pagination?tab=v2api
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :filter_query Search query following spans syntax.
    # @option opts [String] :filter_from Minimum timestamp for requested spans. Supports date-time ISO8601, date math, and regular timestamps (milliseconds).
    # @option opts [String] :filter_to Maximum timestamp for requested spans. Supports date-time ISO8601, date math, and regular timestamps (milliseconds).
    # @option opts [SpansSort] :sort Order of spans in results.
    # @option opts [String] :page_cursor List following results with a cursor provided in the previous query.
    # @option opts [Integer] :page_limit Maximum number of spans in the response.
    # @return [Array<(SpansListResponse, Integer, Hash)>] SpansListResponse data, response status code and response headers
    def list_spans_get_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpansAPI.list_spans_get ...'
      end
      allowable_values = ['timestamp', '-timestamp']
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page_limit'].nil? && opts[:'page_limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_limit"]" when calling SpansAPI.list_spans_get, must be smaller than or equal to 1000.'
      end
      # resource path
      local_var_path = '/api/v2/spans/events'

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
      return_type = opts[:debug_return_type] || 'SpansListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_spans_get,
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
        @api_client.config.logger.debug "API called: SpansAPI#list_spans_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of spans.
    #
    # Provide a paginated version of {#list_spans_get}, returning all items.
    #
    # To use it you need to use a block: list_spans_get_with_pagination { |item| p item }
    #
    # @yield [Span] Paginated items
    def list_spans_get_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "page_limit", 10)
        @api_client.set_attribute_from_path(api_version, opts, "page_limit", Integer, page_size)
        while true do
            response = list_spans_get(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "page_cursor", Integer, @api_client.get_attribute_from_path(response, "meta.page.after"))
        end
    end
  end
end
