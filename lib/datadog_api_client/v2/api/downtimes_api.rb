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
  class DowntimesAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Cancel a downtime.
    #
    # @see #cancel_downtime_with_http_info
    def cancel_downtime(downtime_id, opts = {})
      cancel_downtime_with_http_info(downtime_id, opts)
      nil
    end

    # Cancel a downtime.
    #
    # Cancel a downtime.
    #
    # @param downtime_id [String] ID of the downtime to cancel.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def cancel_downtime_with_http_info(downtime_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.cancel_downtime ...'
      end
      # verify the required parameter 'downtime_id' is set
      if @api_client.config.client_side_validation && downtime_id.nil?
        fail ArgumentError, "Missing the required parameter 'downtime_id' when calling DowntimesAPI.cancel_downtime"
      end
      # resource path
      local_var_path = '/api/v2/downtime/{downtime_id}'.sub('{downtime_id}', CGI.escape(downtime_id.to_s).gsub('%2F', '/'))

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
        :operation => :cancel_downtime,
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
        @api_client.config.logger.debug "API called: DowntimesAPI#cancel_downtime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Schedule a downtime.
    #
    # @see #create_downtime_with_http_info
    def create_downtime(body, opts = {})
      data, _status_code, _headers = create_downtime_with_http_info(body, opts)
      data
    end

    # Schedule a downtime.
    #
    # Schedule a downtime.
    #
    # @param body [DowntimeCreateRequest] Schedule a downtime request body.
    # @param opts [Hash] the optional parameters
    # @return [Array<(DowntimeResponse, Integer, Hash)>] DowntimeResponse data, response status code and response headers
    def create_downtime_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.create_downtime ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DowntimesAPI.create_downtime"
      end
      # resource path
      local_var_path = '/api/v2/downtime'

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
      return_type = opts[:debug_return_type] || 'DowntimeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_downtime,
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
        @api_client.config.logger.debug "API called: DowntimesAPI#create_downtime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a downtime.
    #
    # @see #get_downtime_with_http_info
    def get_downtime(downtime_id, opts = {})
      data, _status_code, _headers = get_downtime_with_http_info(downtime_id, opts)
      data
    end

    # Get a downtime.
    #
    # Get downtime detail by `downtime_id`.
    #
    # @param downtime_id [String] ID of the downtime to fetch.
    # @param opts [Hash] the optional parameters
    # @option opts [String] :include Comma-separated list of resource paths for related resources to include in the response. Supported resource paths are `created_by` and `monitor`.
    # @return [Array<(DowntimeResponse, Integer, Hash)>] DowntimeResponse data, response status code and response headers
    def get_downtime_with_http_info(downtime_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.get_downtime ...'
      end
      # verify the required parameter 'downtime_id' is set
      if @api_client.config.client_side_validation && downtime_id.nil?
        fail ArgumentError, "Missing the required parameter 'downtime_id' when calling DowntimesAPI.get_downtime"
      end
      # resource path
      local_var_path = '/api/v2/downtime/{downtime_id}'.sub('{downtime_id}', CGI.escape(downtime_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DowntimeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_downtime,
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
        @api_client.config.logger.debug "API called: DowntimesAPI#get_downtime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all downtimes.
    #
    # @see #list_downtimes_with_http_info
    def list_downtimes(opts = {})
      data, _status_code, _headers = list_downtimes_with_http_info(opts)
      data
    end

    # Get all downtimes.
    #
    # Get all scheduled downtimes.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Boolean] :current_only Only return downtimes that are active when the request is made.
    # @option opts [String] :include Comma-separated list of resource paths for related resources to include in the response. Supported resource paths are `created_by` and `monitor`.
    # @option opts [Integer] :page_offset Specific offset to use as the beginning of the returned page.
    # @option opts [Integer] :page_limit Maximum number of downtimes in the response.
    # @return [Array<(ListDowntimesResponse, Integer, Hash)>] ListDowntimesResponse data, response status code and response headers
    def list_downtimes_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.list_downtimes ...'
      end
      # resource path
      local_var_path = '/api/v2/downtime'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'current_only'] = opts[:'current_only'] if !opts[:'current_only'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'page[offset]'] = opts[:'page_offset'] if !opts[:'page_offset'].nil?
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
      return_type = opts[:debug_return_type] || 'ListDowntimesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_downtimes,
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
        @api_client.config.logger.debug "API called: DowntimesAPI#list_downtimes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all downtimes.
    #
    # Provide a paginated version of {#list_downtimes}, returning all items.
    #
    # To use it you need to use a block: list_downtimes_with_pagination { |item| p item }
    #
    # @yield [DowntimeResponseData] Paginated items
    def list_downtimes_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "page_limit", 30)
        @api_client.set_attribute_from_path(api_version, opts, "page_limit", Integer, page_size)
        while true do
            response = list_downtimes(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "page_offset", Integer, @api_client.get_attribute_from_path(opts, "page_offset", 0) + page_size)
        end
    end

    # Get active downtimes for a monitor.
    #
    # @see #list_monitor_downtimes_with_http_info
    def list_monitor_downtimes(monitor_id, opts = {})
      data, _status_code, _headers = list_monitor_downtimes_with_http_info(monitor_id, opts)
      data
    end

    # Get active downtimes for a monitor.
    #
    # Get all active downtimes for the specified monitor.
    #
    # @param monitor_id [Integer] The id of the monitor.
    # @param opts [Hash] the optional parameters
    # @return [Array<(MonitorDowntimeMatchResponse, Integer, Hash)>] MonitorDowntimeMatchResponse data, response status code and response headers
    def list_monitor_downtimes_with_http_info(monitor_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.list_monitor_downtimes ...'
      end
      # verify the required parameter 'monitor_id' is set
      if @api_client.config.client_side_validation && monitor_id.nil?
        fail ArgumentError, "Missing the required parameter 'monitor_id' when calling DowntimesAPI.list_monitor_downtimes"
      end
      # resource path
      local_var_path = '/api/v2/monitor/{monitor_id}/downtime_matches'.sub('{monitor_id}', CGI.escape(monitor_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'MonitorDowntimeMatchResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_monitor_downtimes,
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
        @api_client.config.logger.debug "API called: DowntimesAPI#list_monitor_downtimes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a downtime.
    #
    # @see #update_downtime_with_http_info
    def update_downtime(downtime_id, body, opts = {})
      data, _status_code, _headers = update_downtime_with_http_info(downtime_id, body, opts)
      data
    end

    # Update a downtime.
    #
    # Update a downtime by `downtime_id`.
    #
    # @param downtime_id [String] ID of the downtime to update.
    # @param body [DowntimeUpdateRequest] Update a downtime request body.
    # @param opts [Hash] the optional parameters
    # @return [Array<(DowntimeResponse, Integer, Hash)>] DowntimeResponse data, response status code and response headers
    def update_downtime_with_http_info(downtime_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.update_downtime ...'
      end
      # verify the required parameter 'downtime_id' is set
      if @api_client.config.client_side_validation && downtime_id.nil?
        fail ArgumentError, "Missing the required parameter 'downtime_id' when calling DowntimesAPI.update_downtime"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DowntimesAPI.update_downtime"
      end
      # resource path
      local_var_path = '/api/v2/downtime/{downtime_id}'.sub('{downtime_id}', CGI.escape(downtime_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'DowntimeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :update_downtime,
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
        @api_client.config.logger.debug "API called: DowntimesAPI#update_downtime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
