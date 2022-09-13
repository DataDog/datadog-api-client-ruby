=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V1
  class ServiceLevelObjectivesAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Check if SLOs can be safely deleted.
    #
    # @see #check_can_delete_slo_with_http_info
    def check_can_delete_slo(ids, opts = {})
      data, _status_code, _headers = check_can_delete_slo_with_http_info(ids, opts)
      data
    end

    # Check if SLOs can be safely deleted.
    #
    # Check if an SLO can be safely deleted. For example,
    # assure an SLO can be deleted without disrupting a dashboard.
    #
    # @param ids [String] A comma separated list of the IDs of the service level objectives objects.
    # @param opts [Hash] the optional parameters
    # @return [Array<(CheckCanDeleteSLOResponse, Integer, Hash)>] CheckCanDeleteSLOResponse data, response status code and response headers
    def check_can_delete_slo_with_http_info(ids, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.check_can_delete_slo ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ServiceLevelObjectivesAPI.check_can_delete_slo"
      end
      # resource path
      local_var_path = '/api/v1/slo/can_delete'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = ids

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CheckCanDeleteSLOResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :check_can_delete_slo,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#check_can_delete_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an SLO object.
    #
    # @see #create_slo_with_http_info
    def create_slo(body, opts = {})
      data, _status_code, _headers = create_slo_with_http_info(body, opts)
      data
    end

    # Create an SLO object.
    #
    # Create a service level objective object.
    #
    # @param body [ServiceLevelObjectiveRequest] Service level objective request object.
    # @param opts [Hash] the optional parameters
    # @return [Array<(SLOListResponse, Integer, Hash)>] SLOListResponse data, response status code and response headers
    def create_slo_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.create_slo ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceLevelObjectivesAPI.create_slo"
      end
      # resource path
      local_var_path = '/api/v1/slo'

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
      return_type = opts[:debug_return_type] || 'SLOListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_slo,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Post, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#create_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an SLO.
    #
    # @see #delete_slo_with_http_info
    def delete_slo(slo_id, opts = {})
      data, _status_code, _headers = delete_slo_with_http_info(slo_id, opts)
      data
    end

    # Delete an SLO.
    #
    # Permanently delete the specified service level objective object.
    #
    # If an SLO is used in a dashboard, the `DELETE /v1/slo/` endpoint returns
    # a 409 conflict error because the SLO is referenced in a dashboard.
    #
    # @param slo_id [String] The ID of the service level objective.
    # @param opts [Hash] the optional parameters
    # @option opts [String] :force Delete the monitor even if it's referenced by other resources (for example SLO, composite monitor).
    # @return [Array<(SLODeleteResponse, Integer, Hash)>] SLODeleteResponse data, response status code and response headers
    def delete_slo_with_http_info(slo_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.delete_slo ...'
      end
      # verify the required parameter 'slo_id' is set
      if @api_client.config.client_side_validation && slo_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_id' when calling ServiceLevelObjectivesAPI.delete_slo"
      end
      # resource path
      local_var_path = '/api/v1/slo/{slo_id}'.sub('{slo_id}', CGI.escape(slo_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SLODeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_slo,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Delete, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#delete_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk Delete SLO Timeframes.
    #
    # @see #delete_slo_timeframe_in_bulk_with_http_info
    def delete_slo_timeframe_in_bulk(body, opts = {})
      data, _status_code, _headers = delete_slo_timeframe_in_bulk_with_http_info(body, opts)
      data
    end

    # Bulk Delete SLO Timeframes.
    #
    # Delete (or partially delete) multiple service level objective objects.
    #
    # This endpoint facilitates deletion of one or more thresholds for one or more
    # service level objective objects. If all thresholds are deleted, the service level
    # objective object is deleted as well.
    #
    # @param body [Hash<String, Array<SLOTimeframe>>] Delete multiple service level objective objects request body.
    # @param opts [Hash] the optional parameters
    # @return [Array<(SLOBulkDeleteResponse, Integer, Hash)>] SLOBulkDeleteResponse data, response status code and response headers
    def delete_slo_timeframe_in_bulk_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.delete_slo_timeframe_in_bulk ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceLevelObjectivesAPI.delete_slo_timeframe_in_bulk"
      end
      # resource path
      local_var_path = '/api/v1/slo/bulk_delete'

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
      return_type = opts[:debug_return_type] || 'SLOBulkDeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_slo_timeframe_in_bulk,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Post, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#delete_slo_timeframe_in_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an SLO's details.
    #
    # @see #get_slo_with_http_info
    def get_slo(slo_id, opts = {})
      data, _status_code, _headers = get_slo_with_http_info(slo_id, opts)
      data
    end

    # Get an SLO's details.
    #
    # Get a service level objective object.
    #
    # @param slo_id [String] The ID of the service level objective object.
    # @param opts [Hash] the optional parameters
    # @option opts [Boolean] :with_configured_alert_ids Get the IDs of SLO monitors that reference this SLO.
    # @return [Array<(SLOResponse, Integer, Hash)>] SLOResponse data, response status code and response headers
    def get_slo_with_http_info(slo_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.get_slo ...'
      end
      # verify the required parameter 'slo_id' is set
      if @api_client.config.client_side_validation && slo_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_id' when calling ServiceLevelObjectivesAPI.get_slo"
      end
      # resource path
      local_var_path = '/api/v1/slo/{slo_id}'.sub('{slo_id}', CGI.escape(slo_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'with_configured_alert_ids'] = opts[:'with_configured_alert_ids'] if !opts[:'with_configured_alert_ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SLOResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_slo,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#get_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Corrections For an SLO.
    #
    # @see #get_slo_corrections_with_http_info
    def get_slo_corrections(slo_id, opts = {})
      data, _status_code, _headers = get_slo_corrections_with_http_info(slo_id, opts)
      data
    end

    # Get Corrections For an SLO.
    #
    # Get corrections applied to an SLO
    #
    # @param slo_id [String] The ID of the service level objective object.
    # @param opts [Hash] the optional parameters
    # @return [Array<(SLOCorrectionListResponse, Integer, Hash)>] SLOCorrectionListResponse data, response status code and response headers
    def get_slo_corrections_with_http_info(slo_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.get_slo_corrections ...'
      end
      # verify the required parameter 'slo_id' is set
      if @api_client.config.client_side_validation && slo_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_id' when calling ServiceLevelObjectivesAPI.get_slo_corrections"
      end
      # resource path
      local_var_path = '/api/v1/slo/{slo_id}/corrections'.sub('{slo_id}', CGI.escape(slo_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'SLOCorrectionListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_slo_corrections,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#get_slo_corrections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an SLO's history.
    #
    # @see #get_slo_history_with_http_info
    def get_slo_history(slo_id, from_ts, to_ts, opts = {})
      data, _status_code, _headers = get_slo_history_with_http_info(slo_id, from_ts, to_ts, opts)
      data
    end

    # Get an SLO's history.
    #
    # Get a specific SLO’s history, regardless of its SLO type.
    #
    # The detailed history data is structured according to the source data type.
    # For example, metric data is included for event SLOs that use
    # the metric source, and monitor SLO types include the monitor transition history.
    #
    # **Note:** There are different response formats for event based and time based SLOs.
    # Examples of both are shown.
    #
    # @param slo_id [String] The ID of the service level objective object.
    # @param from_ts [Integer] The `from` timestamp for the query window in epoch seconds.
    # @param to_ts [Integer] The `to` timestamp for the query window in epoch seconds.
    # @param opts [Hash] the optional parameters
    # @option opts [Float] :target The SLO target. If `target` is passed in, the response will include the remaining error budget and a timeframe value of `custom`.
    # @option opts [Boolean] :apply_correction Defaults to `true`. If any SLO corrections are applied and this parameter is set to `false`, then the corrections will not be applied and the SLI values will not be affected.
    # @return [Array<(SLOHistoryResponse, Integer, Hash)>] SLOHistoryResponse data, response status code and response headers
    def get_slo_history_with_http_info(slo_id, from_ts, to_ts, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v1.get_slo_history".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v1.get_slo_history")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v1.get_slo_history"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.get_slo_history ...'
      end
      # verify the required parameter 'slo_id' is set
      if @api_client.config.client_side_validation && slo_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_id' when calling ServiceLevelObjectivesAPI.get_slo_history"
      end
      # verify the required parameter 'from_ts' is set
      if @api_client.config.client_side_validation && from_ts.nil?
        fail ArgumentError, "Missing the required parameter 'from_ts' when calling ServiceLevelObjectivesAPI.get_slo_history"
      end
      # verify the required parameter 'to_ts' is set
      if @api_client.config.client_side_validation && to_ts.nil?
        fail ArgumentError, "Missing the required parameter 'to_ts' when calling ServiceLevelObjectivesAPI.get_slo_history"
      end
      if @api_client.config.client_side_validation && !opts[:'target'].nil? && opts[:'target'] > 100
        fail ArgumentError, 'invalid value for "opts[:"target"]" when calling ServiceLevelObjectivesAPI.get_slo_history, must be smaller than or equal to 100.'
      end
      if @api_client.config.client_side_validation && !opts[:'target'].nil? && opts[:'target'] < 0
        fail ArgumentError, 'invalid value for "opts[:"target"]" when calling ServiceLevelObjectivesAPI.get_slo_history, must be greater than or equal to 0.'
      end
      # resource path
      local_var_path = '/api/v1/slo/{slo_id}/history'.sub('{slo_id}', CGI.escape(slo_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from_ts'] = from_ts
      query_params[:'to_ts'] = to_ts
      query_params[:'target'] = opts[:'target'] if !opts[:'target'].nil?
      query_params[:'apply_correction'] = opts[:'apply_correction'] if !opts[:'apply_correction'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SLOHistoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_slo_history,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#get_slo_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all SLOs.
    #
    # @see #list_slos_with_http_info
    def list_slos(opts = {})
      data, _status_code, _headers = list_slos_with_http_info(opts)
      data
    end

    # Get all SLOs.
    #
    # Get a list of service level objective objects for your organization.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :ids A comma separated list of the IDs of the service level objectives objects.
    # @option opts [String] :query The query string to filter results based on SLO names.
    # @option opts [String] :tags_query The query string to filter results based on a single SLO tag.
    # @option opts [String] :metrics_query The query string to filter results based on SLO numerator and denominator.
    # @option opts [Integer] :limit The number of SLOs to return in the response.
    # @option opts [Integer] :offset The specific offset to use as the beginning of the returned response.
    # @return [Array<(SLOListResponse, Integer, Hash)>] SLOListResponse data, response status code and response headers
    def list_slos_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.list_slos ...'
      end
      # resource path
      local_var_path = '/api/v1/slo'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = opts[:'ids'] if !opts[:'ids'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'tags_query'] = opts[:'tags_query'] if !opts[:'tags_query'].nil?
      query_params[:'metrics_query'] = opts[:'metrics_query'] if !opts[:'metrics_query'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SLOListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_slos,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#list_slos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for SLOs.
    #
    # @see #search_slo_with_http_info
    def search_slo(opts = {})
      data, _status_code, _headers = search_slo_with_http_info(opts)
      data
    end

    # Search for SLOs.
    #
    # Get a list of service level objective objects for your organization.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :query The query string to filter results based on SLO names. Some examples of queries include `service:<service-name>` and `<slo-name>`.
    # @option opts [Integer] :page_size The number of files to return in the response `[default=10]`.
    # @option opts [Integer] :page_number The identifier of the first page to return. This parameter is used for the pagination feature `[default=0]`.
    # @option opts [Boolean] :include_facets Whether or not to return facet information in the response `[default=false]`.
    # @return [Array<(SearchSLOResponse, Integer, Hash)>] SearchSLOResponse data, response status code and response headers
    def search_slo_with_http_info(opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v1.search_slo".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v1.search_slo")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v1.search_slo"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.search_slo ...'
      end
      # resource path
      local_var_path = '/api/v1/slo/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'include_facets'] = opts[:'include_facets'] if !opts[:'include_facets'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchSLOResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :search_slo,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#search_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an SLO.
    #
    # @see #update_slo_with_http_info
    def update_slo(slo_id, body, opts = {})
      data, _status_code, _headers = update_slo_with_http_info(slo_id, body, opts)
      data
    end

    # Update an SLO.
    #
    # Update the specified service level objective object.
    #
    # @param slo_id [String] The ID of the service level objective object.
    # @param body [ServiceLevelObjective] The edited service level objective request object.
    # @param opts [Hash] the optional parameters
    # @return [Array<(SLOListResponse, Integer, Hash)>] SLOListResponse data, response status code and response headers
    def update_slo_with_http_info(slo_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.update_slo ...'
      end
      # verify the required parameter 'slo_id' is set
      if @api_client.config.client_side_validation && slo_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_id' when calling ServiceLevelObjectivesAPI.update_slo"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceLevelObjectivesAPI.update_slo"
      end
      # resource path
      local_var_path = '/api/v1/slo/{slo_id}'.sub('{slo_id}', CGI.escape(slo_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'SLOListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_slo,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Put, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#update_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
