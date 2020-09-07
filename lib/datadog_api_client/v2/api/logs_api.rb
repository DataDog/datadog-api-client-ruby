=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'cgi'

module DatadogAPIClient::V2
  class LogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Aggregate events
    # The public API endpoint to aggregate events into buckets and compute metrics and timeseries.
    # @param [Hash] opts the optional parameters
    # @option opts [LogsAggregateRequest] :body 
    # @return [LogsAggregateResponse]
    def aggregate_logs(opts = {})
      data, _status_code, _headers = aggregate_logs_with_http_info(opts)
      data
    end

    # Aggregate events
    # The public API endpoint to aggregate events into buckets and compute metrics and timeseries.
    # @param [Hash] opts the optional parameters
    # @option opts [LogsAggregateRequest] :body 
    # @return [Array<(LogsAggregateResponse, Integer, Hash)>] LogsAggregateResponse data, response status code and response headers
    def aggregate_logs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsApi.aggregate_logs ...'
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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'LogsAggregateResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#aggregate_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of logs
    # List endpoint returns logs that match a log search query. [Results are paginated][1].  Both this endpoint and the GET endpoint can be used interchangeably when listing logs.  **If you are considering archiving logs for your organization, consider use of the Datadog archive capabilities instead of the log list API. See [Datadog Logs Archive documentation][2].**  [1]: /logs/guide/collect-multiple-logs-with-pagination [2]: https://docs.datadoghq.com/logs/archives
    # @param [Hash] opts the optional parameters
    # @option opts [LogsListRequest] :body 
    # @return [LogsListResponse]
    def list_logs(opts = {})
      data, _status_code, _headers = list_logs_with_http_info(opts)
      data
    end

    # Get a list of logs
    # List endpoint returns logs that match a log search query. [Results are paginated][1].  Both this endpoint and the GET endpoint can be used interchangeably when listing logs.  **If you are considering archiving logs for your organization, consider use of the Datadog archive capabilities instead of the log list API. See [Datadog Logs Archive documentation][2].**  [1]: /logs/guide/collect-multiple-logs-with-pagination [2]: https://docs.datadoghq.com/logs/archives
    # @param [Hash] opts the optional parameters
    # @option opts [LogsListRequest] :body 
    # @return [Array<(LogsListResponse, Integer, Hash)>] LogsListResponse data, response status code and response headers
    def list_logs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsApi.list_logs ...'
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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'LogsListResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#list_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a quick list of logs
    # List endpoint returns logs that match a log search query. [Results are paginated][1].  Both this endpoint and the POST endpoint can be used interchangeably when listing logs.  **If you are considering archiving logs for your organization, consider use of the Datadog archive capabilities instead of the log list API. See [Datadog Logs Archive documentation][2].**  [1]: /logs/guide/collect-multiple-logs-with-pagination [2]: https://docs.datadoghq.com/logs/archives
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_query Search query following logs syntax.
    # @option opts [String] :filter_index For customers with multiple indexes, the indexes to search Defaults to &#39;*&#39; which means all indexes
    # @option opts [DateTime] :filter_from Minimum timestamp for requested logs.
    # @option opts [DateTime] :filter_to Maximum timestamp for requested logs.
    # @option opts [LogsSort] :sort Order of logs in results.
    # @option opts [String] :page_cursor List following results with a cursor provided in the previous query.
    # @option opts [Integer] :page_limit Maximum number of logs in the response. (default to 10)
    # @return [LogsListResponse]
    def list_logs_get(opts = {})
      data, _status_code, _headers = list_logs_get_with_http_info(opts)
      data
    end

    # Get a quick list of logs
    # List endpoint returns logs that match a log search query. [Results are paginated][1].  Both this endpoint and the POST endpoint can be used interchangeably when listing logs.  **If you are considering archiving logs for your organization, consider use of the Datadog archive capabilities instead of the log list API. See [Datadog Logs Archive documentation][2].**  [1]: /logs/guide/collect-multiple-logs-with-pagination [2]: https://docs.datadoghq.com/logs/archives
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_query Search query following logs syntax.
    # @option opts [String] :filter_index For customers with multiple indexes, the indexes to search Defaults to &#39;*&#39; which means all indexes
    # @option opts [DateTime] :filter_from Minimum timestamp for requested logs.
    # @option opts [DateTime] :filter_to Maximum timestamp for requested logs.
    # @option opts [LogsSort] :sort Order of logs in results.
    # @option opts [String] :page_cursor List following results with a cursor provided in the previous query.
    # @option opts [Integer] :page_limit Maximum number of logs in the response.
    # @return [Array<(LogsListResponse, Integer, Hash)>] LogsListResponse data, response status code and response headers
    def list_logs_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsApi.list_logs_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_limit'].nil? && opts[:'page_limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_limit"]" when calling LogsApi.list_logs_get, must be smaller than or equal to 1000.'
      end

      # resource path
      local_var_path = '/api/v2/logs/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[query]'] = opts[:'filter_query'] if !opts[:'filter_query'].nil?
      query_params[:'filter[index]'] = opts[:'filter_index'] if !opts[:'filter_index'].nil?
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
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'LogsListResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#list_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
