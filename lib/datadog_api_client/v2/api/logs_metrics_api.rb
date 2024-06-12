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
  class LogsMetricsAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create a log-based metric.
    #
    # @see #create_logs_metric_with_http_info
    def create_logs_metric(body, opts = {})
      data, _status_code, _headers = create_logs_metric_with_http_info(body, opts)
      data
    end

    # Create a log-based metric.
    #
    # Create a metric based on your ingested logs in your organization.
    # Returns the log-based metric object from the request body when the request is successful.
    #
    # @param body [LogsMetricCreateRequest] The definition of the new log-based metric.
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsMetricResponse, Integer, Hash)>] LogsMetricResponse data, response status code and response headers
    def create_logs_metric_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsMetricsAPI.create_logs_metric ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsMetricsAPI.create_logs_metric"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/metrics'

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
      return_type = opts[:debug_return_type] || 'LogsMetricResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_logs_metric,
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
        @api_client.config.logger.debug "API called: LogsMetricsAPI#create_logs_metric\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a log-based metric.
    #
    # @see #delete_logs_metric_with_http_info
    def delete_logs_metric(metric_id, opts = {})
      delete_logs_metric_with_http_info(metric_id, opts)
      nil
    end

    # Delete a log-based metric.
    #
    # Delete a specific log-based metric from your organization.
    #
    # @param metric_id [String] The name of the log-based metric.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_logs_metric_with_http_info(metric_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsMetricsAPI.delete_logs_metric ...'
      end
      # verify the required parameter 'metric_id' is set
      if @api_client.config.client_side_validation && metric_id.nil?
        fail ArgumentError, "Missing the required parameter 'metric_id' when calling LogsMetricsAPI.delete_logs_metric"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/metrics/{metric_id}'.sub('{metric_id}', CGI.escape(metric_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_logs_metric,
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
        @api_client.config.logger.debug "API called: LogsMetricsAPI#delete_logs_metric\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a log-based metric.
    #
    # @see #get_logs_metric_with_http_info
    def get_logs_metric(metric_id, opts = {})
      data, _status_code, _headers = get_logs_metric_with_http_info(metric_id, opts)
      data
    end

    # Get a log-based metric.
    #
    # Get a specific log-based metric from your organization.
    #
    # @param metric_id [String] The name of the log-based metric.
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsMetricResponse, Integer, Hash)>] LogsMetricResponse data, response status code and response headers
    def get_logs_metric_with_http_info(metric_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsMetricsAPI.get_logs_metric ...'
      end
      # verify the required parameter 'metric_id' is set
      if @api_client.config.client_side_validation && metric_id.nil?
        fail ArgumentError, "Missing the required parameter 'metric_id' when calling LogsMetricsAPI.get_logs_metric"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/metrics/{metric_id}'.sub('{metric_id}', CGI.escape(metric_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'LogsMetricResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_logs_metric,
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
        @api_client.config.logger.debug "API called: LogsMetricsAPI#get_logs_metric\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all log-based metrics.
    #
    # @see #list_logs_metrics_with_http_info
    def list_logs_metrics(opts = {})
      data, _status_code, _headers = list_logs_metrics_with_http_info(opts)
      data
    end

    # Get all log-based metrics.
    #
    # Get the list of configured log-based metrics with their definitions.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsMetricsResponse, Integer, Hash)>] LogsMetricsResponse data, response status code and response headers
    def list_logs_metrics_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsMetricsAPI.list_logs_metrics ...'
      end
      # resource path
      local_var_path = '/api/v2/logs/config/metrics'

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
      return_type = opts[:debug_return_type] || 'LogsMetricsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_logs_metrics,
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
        @api_client.config.logger.debug "API called: LogsMetricsAPI#list_logs_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a log-based metric.
    #
    # @see #update_logs_metric_with_http_info
    def update_logs_metric(metric_id, body, opts = {})
      data, _status_code, _headers = update_logs_metric_with_http_info(metric_id, body, opts)
      data
    end

    # Update a log-based metric.
    #
    # Update a specific log-based metric from your organization.
    # Returns the log-based metric object from the request body when the request is successful.
    #
    # @param metric_id [String] The name of the log-based metric.
    # @param body [LogsMetricUpdateRequest] New definition of the log-based metric.
    # @param opts [Hash] the optional parameters
    # @return [Array<(LogsMetricResponse, Integer, Hash)>] LogsMetricResponse data, response status code and response headers
    def update_logs_metric_with_http_info(metric_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsMetricsAPI.update_logs_metric ...'
      end
      # verify the required parameter 'metric_id' is set
      if @api_client.config.client_side_validation && metric_id.nil?
        fail ArgumentError, "Missing the required parameter 'metric_id' when calling LogsMetricsAPI.update_logs_metric"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LogsMetricsAPI.update_logs_metric"
      end
      # resource path
      local_var_path = '/api/v2/logs/config/metrics/{metric_id}'.sub('{metric_id}', CGI.escape(metric_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'LogsMetricResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_logs_metric,
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
        @api_client.config.logger.debug "API called: LogsMetricsAPI#update_logs_metric\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
