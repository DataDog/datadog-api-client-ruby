=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V1
  class LogsAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Search logs
    # List endpoint returns logs that match a log search query.
    # [Results are paginated][1].
    # 
    # **If you are considering archiving logs for your organization,
    # consider use of the Datadog archive capabilities instead of the log list API.
    # See [Datadog Logs Archive documentation][2].**
    # 
    # [1]: /logs/guide/collect-multiple-logs-with-pagination
    # [2]: https://docs.datadoghq.com/logs/archives
    # @param body [LogsListRequest] Logs filter
    # @param [Hash] opts the optional parameters
    # @return [LogsListResponse]
    def list_logs(body, opts = {})
      data, _status_code, _headers = list_logs_with_http_info(body, opts)
      data
    end

    # Search logs
    # List endpoint returns logs that match a log search query.
    # [Results are paginated][1].
    # 
    # **If you are considering archiving logs for your organization,
    # consider use of the Datadog archive capabilities instead of the log list API.
    # See [Datadog Logs Archive documentation][2].**
    # 
    # [1]: /logs/guide/collect-multiple-logs-with-pagination
    # [2]: https://docs.datadoghq.com/logs/archives
    # @param body [LogsListRequest] Logs filter
    # @param [Hash] opts the optional parameters
    # @return [Array<(LogsListResponse, Integer, Hash)>] LogsListResponse data, response status code and response headers
    def list_logs_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_logs)
        unstable_enabled = @api_client.config.unstable_operations[:list_logs]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_logs")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_logs"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsAPI.list_logs ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsAPI.list_logs"
      end
      # resource path
      local_var_path = '/api/v1/logs-queries/list'

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
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsAPI#list_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send logs
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
    # 
    # The status codes answered by the HTTP API are:
    # - 200: OK
    # - 400: Bad request (likely an issue in the payload formatting)
    # - 403: Permission issue (likely using an invalid API Key)
    # - 413: Payload too large (batch is above 5MB uncompressed)
    # - 5xx: Internal error, request should be retried after some time
    # @param body [Array<HTTPLogItem>] Log to send (JSON format).
    # @param [Hash] opts the optional parameters
    # @option opts [ContentEncoding] :content_encoding HTTP header used to compress the media-type.
    # @option opts [String] :ddtags Log tags can be passed as query parameters with `text/plain` content type.
    # @return [Object]
    def submit_log(body, opts = {})
      data, _status_code, _headers = submit_log_with_http_info(body, opts)
      data
    end

    # Send logs
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
    # 
    # The status codes answered by the HTTP API are:
    # - 200: OK
    # - 400: Bad request (likely an issue in the payload formatting)
    # - 403: Permission issue (likely using an invalid API Key)
    # - 413: Payload too large (batch is above 5MB uncompressed)
    # - 5xx: Internal error, request should be retried after some time
    # @param body [Array<HTTPLogItem>] Log to send (JSON format).
    # @param [Hash] opts the optional parameters
    # @option opts [ContentEncoding] :content_encoding HTTP header used to compress the media-type.
    # @option opts [String] :ddtags Log tags can be passed as query parameters with `text/plain` content type.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def submit_log_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:submit_log)
        unstable_enabled = @api_client.config.unstable_operations[:submit_log]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "submit_log")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "submit_log"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsAPI.submit_log ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsAPI.submit_log"
      end
      # resource path
      local_var_path = '/v1/input'

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
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsAPI#submit_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
