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
  class ProcessesAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Get all processes.
    #
    # @see #list_processes_with_http_info
    def list_processes(opts = {})
      data, _status_code, _headers = list_processes_with_http_info(opts)
      data
    end

    # Get all processes.
    #
    # Get all processes for your organization.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :search String to search processes by.
    # @option opts [String] :tags Comma-separated list of tags to filter processes by.
    # @option opts [Integer] :from Unix timestamp (number of seconds since epoch) of the start of the query window. If not provided, the start of the query window will be 15 minutes before the `to` timestamp. If neither `from` nor `to` are provided, the query window will be `[now - 15m, now]`.
    # @option opts [Integer] :to Unix timestamp (number of seconds since epoch) of the end of the query window. If not provided, the end of the query window will be 15 minutes after the `from` timestamp. If neither `from` nor `to` are provided, the query window will be `[now - 15m, now]`.
    # @option opts [Integer] :page_limit Maximum number of results returned.
    # @option opts [String] :page_cursor String to query the next page of results. This key is provided with each valid response from the API in `meta.page.after`.
    # @return [Array<(ProcessSummariesResponse, Integer, Hash)>] ProcessSummariesResponse data, response status code and response headers
    def list_processes_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_processes)
        unstable_enabled = @api_client.config.unstable_operations[:list_processes]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_processes")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_processes"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcessesAPI.list_processes ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_limit'].nil? && opts[:'page_limit'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_limit"]" when calling ProcessesAPI.list_processes, must be smaller than or equal to 10000.'
      end
      if @api_client.config.client_side_validation && !opts[:'page_limit'].nil? && opts[:'page_limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_limit"]" when calling ProcessesAPI.list_processes, must be greater than or equal to 1.'
      end
      # resource path
      local_var_path = '/api/v2/processes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'page[limit]'] = opts[:'page_limit'] if !opts[:'page_limit'].nil?
      query_params[:'page[cursor]'] = opts[:'page_cursor'] if !opts[:'page_cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ProcessSummariesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_processes,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcessesAPI#list_processes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all processes.
    #
    # Provide a paginated version of {#list_processes}, returning all items.
    #
    # To use it you need to use a block: list_processes_with_pagination { |item| p item }
    #
    # @yield [ProcessSummary] Paginated items
    def list_processes_with_pagination(opts = {})
        page_size = @api_client.get_attribute_from_path(opts, "page_limit", 1000)
        @api_client.set_attribute_from_path(opts, "page_limit", String, page_size)
        while true do
            response = list_processes(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(opts, "page_cursor", String, @api_client.get_attribute_from_path(response, "meta.page.after"))
        end
    end
  end
end
