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
  class ServiceLevelObjectiveCorrectionsAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create an SLO correction.
    #
    # @see #create_slo_correction_with_http_info
    def create_slo_correction(body, opts = {})
      data, _status_code, _headers = create_slo_correction_with_http_info(body, opts)
      data
    end

    # Create an SLO correction.
    #
    # Create an SLO Correction.
    #
    # @param body [SLOCorrectionCreateRequest] Create an SLO Correction
    # @param opts [Hash] the optional parameters
    # @return [Array<(SLOCorrectionResponse, Integer, Hash)>] SLOCorrectionResponse data, response status code and response headers
    def create_slo_correction_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectiveCorrectionsAPI.create_slo_correction ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceLevelObjectiveCorrectionsAPI.create_slo_correction"
      end
      # resource path
      local_var_path = '/api/v1/slo/correction'

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
      return_type = opts[:debug_return_type] || 'SLOCorrectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_slo_correction,
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
        @api_client.config.logger.debug "API called: ServiceLevelObjectiveCorrectionsAPI#create_slo_correction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an SLO correction.
    #
    # @see #delete_slo_correction_with_http_info
    def delete_slo_correction(slo_correction_id, opts = {})
      delete_slo_correction_with_http_info(slo_correction_id, opts)
      nil
    end

    # Delete an SLO correction.
    #
    # Permanently delete the specified SLO correction object.
    #
    # @param slo_correction_id [String] The ID of the SLO correction object.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_slo_correction_with_http_info(slo_correction_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectiveCorrectionsAPI.delete_slo_correction ...'
      end
      # verify the required parameter 'slo_correction_id' is set
      if @api_client.config.client_side_validation && slo_correction_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_correction_id' when calling ServiceLevelObjectiveCorrectionsAPI.delete_slo_correction"
      end
      # resource path
      local_var_path = '/api/v1/slo/correction/{slo_correction_id}'.sub('{slo_correction_id}', CGI.escape(slo_correction_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_slo_correction,
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
        @api_client.config.logger.debug "API called: ServiceLevelObjectiveCorrectionsAPI#delete_slo_correction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an SLO correction for an SLO.
    #
    # @see #get_slo_correction_with_http_info
    def get_slo_correction(slo_correction_id, opts = {})
      data, _status_code, _headers = get_slo_correction_with_http_info(slo_correction_id, opts)
      data
    end

    # Get an SLO correction for an SLO.
    #
    # Get an SLO correction.
    #
    # @param slo_correction_id [String] The ID of the SLO correction object.
    # @param opts [Hash] the optional parameters
    # @return [Array<(SLOCorrectionResponse, Integer, Hash)>] SLOCorrectionResponse data, response status code and response headers
    def get_slo_correction_with_http_info(slo_correction_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectiveCorrectionsAPI.get_slo_correction ...'
      end
      # verify the required parameter 'slo_correction_id' is set
      if @api_client.config.client_side_validation && slo_correction_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_correction_id' when calling ServiceLevelObjectiveCorrectionsAPI.get_slo_correction"
      end
      # resource path
      local_var_path = '/api/v1/slo/correction/{slo_correction_id}'.sub('{slo_correction_id}', CGI.escape(slo_correction_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'SLOCorrectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_slo_correction,
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
        @api_client.config.logger.debug "API called: ServiceLevelObjectiveCorrectionsAPI#get_slo_correction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all SLO corrections.
    #
    # @see #list_slo_correction_with_http_info
    def list_slo_correction(opts = {})
      data, _status_code, _headers = list_slo_correction_with_http_info(opts)
      data
    end

    # Get all SLO corrections.
    #
    # Get all Service Level Objective corrections.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Integer] :offset The specific offset to use as the beginning of the returned response.
    # @option opts [Integer] :limit The number of SLO corrections to return in the response. Default is 25.
    # @return [Array<(SLOCorrectionListResponse, Integer, Hash)>] SLOCorrectionListResponse data, response status code and response headers
    def list_slo_correction_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectiveCorrectionsAPI.list_slo_correction ...'
      end
      # resource path
      local_var_path = '/api/v1/slo/correction'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

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
        :operation => :list_slo_correction,
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
        @api_client.config.logger.debug "API called: ServiceLevelObjectiveCorrectionsAPI#list_slo_correction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an SLO correction.
    #
    # @see #update_slo_correction_with_http_info
    def update_slo_correction(slo_correction_id, body, opts = {})
      data, _status_code, _headers = update_slo_correction_with_http_info(slo_correction_id, body, opts)
      data
    end

    # Update an SLO correction.
    #
    # Update the specified SLO correction object.
    #
    # @param slo_correction_id [String] The ID of the SLO correction object.
    # @param body [SLOCorrectionUpdateRequest] The edited SLO correction object.
    # @param opts [Hash] the optional parameters
    # @return [Array<(SLOCorrectionResponse, Integer, Hash)>] SLOCorrectionResponse data, response status code and response headers
    def update_slo_correction_with_http_info(slo_correction_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectiveCorrectionsAPI.update_slo_correction ...'
      end
      # verify the required parameter 'slo_correction_id' is set
      if @api_client.config.client_side_validation && slo_correction_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_correction_id' when calling ServiceLevelObjectiveCorrectionsAPI.update_slo_correction"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceLevelObjectiveCorrectionsAPI.update_slo_correction"
      end
      # resource path
      local_var_path = '/api/v1/slo/correction/{slo_correction_id}'.sub('{slo_correction_id}', CGI.escape(slo_correction_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'SLOCorrectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_slo_correction,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V1"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Patch, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectiveCorrectionsAPI#update_slo_correction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
