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
  class SnapshotsAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Take graph snapshots
    # Take graph snapshots.
    # **Note**: When a snapshot is created, there is some delay before it is available.
    # @param start [Integer] The POSIX timestamp of the start of the query.
    # @param _end [Integer] The POSIX timestamp of the end of the query.
    # @param opts [Hash] the optional parameters
    # @option opts [String] :metric_query The metric query.
    # @option opts [String] :event_query A query that adds event bands to the graph.
    # @option opts [String] :graph_def A JSON document defining the graph. `graph_def` can be used instead of `metric_query`. The JSON document uses the [grammar defined here](https://docs.datadoghq.com/graphing/graphing_json/#grammar) and should be formatted to a single line then URL encoded.
    # @option opts [String] :title A title for the graph. If no title is specified, the graph does not have a title.
    # @return [GraphSnapshot]
    def get_graph_snapshot(start, _end, opts = {})
      data, _status_code, _headers = get_graph_snapshot_with_http_info(start, _end, opts)
      data
    end

    # Take graph snapshots
    # Take graph snapshots.
    # **Note**: When a snapshot is created, there is some delay before it is available.
    # @param start [Integer] The POSIX timestamp of the start of the query.
    # @param _end [Integer] The POSIX timestamp of the end of the query.
    # @param opts [Hash] the optional parameters
    # @option opts [String] :metric_query The metric query.
    # @option opts [String] :event_query A query that adds event bands to the graph.
    # @option opts [String] :graph_def A JSON document defining the graph. `graph_def` can be used instead of `metric_query`. The JSON document uses the [grammar defined here](https://docs.datadoghq.com/graphing/graphing_json/#grammar) and should be formatted to a single line then URL encoded.
    # @option opts [String] :title A title for the graph. If no title is specified, the graph does not have a title.
    # @return [Array<(GraphSnapshot, Integer, Hash)>] GraphSnapshot data, response status code and response headers
    def get_graph_snapshot_with_http_info(start, _end, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_graph_snapshot)
        unstable_enabled = @api_client.config.unstable_operations[:get_graph_snapshot]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_graph_snapshot")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_graph_snapshot"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnapshotsAPI.get_graph_snapshot ...'
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling SnapshotsAPI.get_graph_snapshot"
      end
      # verify the required parameter '_end' is set
      if @api_client.config.client_side_validation && _end.nil?
        fail ArgumentError, "Missing the required parameter '_end' when calling SnapshotsAPI.get_graph_snapshot"
      end
      # resource path
      local_var_path = '/api/v1/graph/snapshot'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start'] = start
      query_params[:'end'] = _end
      query_params[:'metric_query'] = opts[:'metric_query'] if !opts[:'metric_query'].nil?
      query_params[:'event_query'] = opts[:'event_query'] if !opts[:'event_query'].nil?
      query_params[:'graph_def'] = opts[:'graph_def'] if !opts[:'graph_def'].nil?
      query_params[:'title'] = opts[:'title'] if !opts[:'title'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GraphSnapshot'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_graph_snapshot,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnapshotsAPI#get_graph_snapshot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
