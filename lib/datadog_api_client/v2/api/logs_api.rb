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
  class LogsAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Aggregate events.
    #
    # @see #aggregate_logs_with_http_info
    def aggregate_logs(body, opts = {})
      data, _status_code, _headers = aggregate_logs_with_http_info(body, opts)
      data
    end

    # Aggregate events.
    #
    # The API endpoint to aggregate events into buckets and compute metrics and timeseries.
    #
    # @param body [LogsAggregateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsAggregateResponse, Integer, Hash)>] LogsAggregateResponse data, response status code and response headers
    def aggregate_logs_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsAPI.aggregate_logs ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsAPI.aggregate_logs"
      end
      # resource path
      local_var_path = '/api/v2/logs/analytics/aggregate'

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
      return_type = opts[:debug_return_type] || 'LogsAggregateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :aggregate_logs,
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
        @api_client.config.logger.debug "API called: LogsAPI#aggregate_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search logs (POST).
    #
    # @see #list_logs_with_http_info
    def list_logs(opts = {})
      data, _status_code, _headers = list_logs_with_http_info(opts)
      data
    end

    # Search logs (POST).
    #
    # List endpoint returns logs that match a log search query.
    # [Results are paginated][1].
    #
    # Use this endpoint to search and filter your logs.
    #
    # **If you are considering archiving logs for your organization,
    # consider use of the Datadog archive capabilities instead of the log list API.
    # See [Datadog Logs Archive documentation][2].**
    #
    # [1]: /logs/guide/collect-multiple-logs-with-pagination
    # [2]: https://docs.datadoghq.com/logs/archives
    #
    # @param opts [Hash] the optional parameters
    # @option opts [LogsListRequest] :body 
    # @return [Array<(LogsListResponse, Integer, Hash)>] LogsListResponse data, response status code and response headers
    def list_logs_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsAPI.list_logs ...'
      end
      # resource path
      local_var_path = '/api/v2/logs/events/search'

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
      return_type = opts[:debug_return_type] || 'LogsListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_logs,
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
        @api_client.config.logger.debug "API called: LogsAPI#list_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search logs (POST).
    #
    # Provide a paginated version of {#list_logs}, returning all items.
    #
    # To use it you need to use a block: list_logs_with_pagination { |item| p item }
    #
    # @yield [Log] Paginated items
    def list_logs_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "body.page.limit", 10)
        @api_client.set_attribute_from_path(api_version, opts, "body.page.limit", LogsListRequest, page_size)
        while true do
            response = list_logs(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "body.page.cursor", LogsListRequest, @api_client.get_attribute_from_path(response, "meta.page.after"))
        end
    end

    # Search logs (GET).
    #
    # @see #list_logs_get_with_http_info
    def list_logs_get(opts = {})
      data, _status_code, _headers = list_logs_get_with_http_info(opts)
      data
    end

    # Search logs (GET).
    #
    # List endpoint returns logs that match a log search query.
    # [Results are paginated][1].
    #
    # Use this endpoint to search and filter your logs.
    #
    # **If you are considering archiving logs for your organization,
    # consider use of the Datadog archive capabilities instead of the log list API.
    # See [Datadog Logs Archive documentation][2].**
    #
    # [1]: /logs/guide/collect-multiple-logs-with-pagination
    # [2]: https://docs.datadoghq.com/logs/archives
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :filter_query Search query following logs syntax.
    # @option opts [Array<String>] :filter_indexes For customers with multiple indexes, the indexes to search. Defaults to '*' which means all indexes
    # @option opts [Time] :filter_from Minimum timestamp for requested logs.
    # @option opts [Time] :filter_to Maximum timestamp for requested logs.
    # @option opts [LogsStorageTier] :filter_storage_tier Specifies the storage type to be used
    # @option opts [LogsSort] :sort Order of logs in results.
    # @option opts [String] :page_cursor List following results with a cursor provided in the previous query.
    # @option opts [Integer] :page_limit Maximum number of logs in the response.
    # @return [Array<(LogsListResponse, Integer, Hash)>] LogsListResponse data, response status code and response headers
    def list_logs_get_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsAPI.list_logs_get ...'
      end
      allowable_values = ['indexes', 'online-archives', 'flex']
      if @api_client.config.client_side_validation && opts[:'filter_storage_tier'] && !allowable_values.include?(opts[:'filter_storage_tier'])
        fail ArgumentError, "invalid value for \"filter_storage_tier\", must be one of #{allowable_values}"
      end
      allowable_values = ['timestamp', '-timestamp']
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page_limit'].nil? && opts[:'page_limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_limit"]" when calling LogsAPI.list_logs_get, must be smaller than or equal to 1000.'
      end
      # resource path
      local_var_path = '/api/v2/logs/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[query]'] = opts[:'filter_query'] if !opts[:'filter_query'].nil?
      query_params[:'filter[indexes]'] = @api_client.build_collection_param(opts[:'filter_indexes'], :csv) if !opts[:'filter_indexes'].nil?
      query_params[:'filter[from]'] = opts[:'filter_from'] if !opts[:'filter_from'].nil?
      query_params[:'filter[to]'] = opts[:'filter_to'] if !opts[:'filter_to'].nil?
      query_params[:'filter[storage_tier]'] = opts[:'filter_storage_tier'] if !opts[:'filter_storage_tier'].nil?
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
      return_type = opts[:debug_return_type] || 'LogsListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_logs_get,
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
        @api_client.config.logger.debug "API called: LogsAPI#list_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search logs (GET).
    #
    # Provide a paginated version of {#list_logs_get}, returning all items.
    #
    # To use it you need to use a block: list_logs_get_with_pagination { |item| p item }
    #
    # @yield [Log] Paginated items
    def list_logs_get_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "page_limit", 10)
        @api_client.set_attribute_from_path(api_version, opts, "page_limit", Integer, page_size)
        while true do
            response = list_logs_get(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "page_cursor", String, @api_client.get_attribute_from_path(response, "meta.page.after"))
        end
    end

    # Send logs.
    #
    # @see #submit_log_with_http_info
    def submit_log(body, opts = {})
      data, _status_code, _headers = submit_log_with_http_info(body, opts)
      data
    end

    # Send logs.
    #
    # Send your logs to your Datadog platform over HTTP. Limits per HTTP request are:
    #
    # - Maximum content size per payload (uncompressed): 5MB
    # - Maximum size for a single log: 1MB
    # - Maximum array size if sending multiple logs in an array: 1000 entries
    #
    # Any log exceeding 1MB is accepted and truncated by Datadog:
    # - For a single log request, the API truncates the log at 1MB and returns a 2xx.
    # - For a multi-logs request, the API processes all logs, truncates only logs larger than 1MB, and returns a 2xx.
    #
    # Datadog recommends sending your logs compressed.
    # Add the `Content-Encoding: gzip` header to the request when sending compressed logs.
    # Log events can be submitted with a timestamp that is up to 18 hours in the past.
    #
    # The status codes answered by the HTTP API are:
    # - 202: Accepted: the request has been accepted for processing
    # - 400: Bad request (likely an issue in the payload formatting)
    # - 401: Unauthorized (likely a missing API Key)
    # - 403: Permission issue (likely using an invalid API Key)
    # - 408: Request Timeout, request should be retried after some time
    # - 413: Payload too large (batch is above 5MB uncompressed)
    # - 429: Too Many Requests, request should be retried after some time
    # - 500: Internal Server Error, the server encountered an unexpected condition that prevented it from fulfilling the request, request should be retried after some time
    # - 503: Service Unavailable, the server is not ready to handle the request probably because it is overloaded, request should be retried after some time
    #
    # @param body [Array<HTTPLogItem>] Log to send (JSON format).
    # @param opts [Hash] the optional parameters
    # @option opts [ContentEncoding] :content_encoding HTTP header used to compress the media-type.
    # @option opts [String] :ddtags Log tags can be passed as query parameters with `text/plain` content type.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def submit_log_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsAPI.submit_log ...'
      end
      allowable_values = ['identity', 'gzip', 'deflate', 'zstd1']
      if @api_client.config.client_side_validation && opts[:'content_encoding'] && !allowable_values.include?(opts[:'content_encoding'])
        fail ArgumentError, "invalid value for \"content_encoding\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsAPI.submit_log"
      end
      # resource path
      local_var_path = '/api/v2/logs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ddtags'] = opts[:'ddtags'] if !opts[:'ddtags'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/logplex-1', 'text/plain'])
      header_params['Content-Encoding'] = opts[:'content_encoding'] if !opts[:'content_encoding'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth]

      new_options = opts.merge(
        :operation => :submit_log,
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
        @api_client.config.logger.debug "API called: LogsAPI#submit_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
