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
  class ServiceLevelObjectivesAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create a new SLO report.
    #
    # @see #create_slo_report_job_with_http_info
    def create_slo_report_job(body, opts = {})
      data, _status_code, _headers = create_slo_report_job_with_http_info(body, opts)
      data
    end

    # Create a new SLO report.
    #
    # Create a job to generate an SLO report. The report job is processed asynchronously and eventually results in a CSV report being available for download.
    #
    # Check the status of the job and download the CSV report using the returned `report_id`.
    #
    # @param body [SloReportCreateRequest] Create SLO report job request body.
    # @param opts [Hash] the optional parameters
    # @return [Array<(SLOReportPostResponse, Integer, Hash)>] SLOReportPostResponse data, response status code and response headers
    def create_slo_report_job_with_http_info(body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.create_slo_report_job".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.create_slo_report_job")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.create_slo_report_job"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.create_slo_report_job ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceLevelObjectivesAPI.create_slo_report_job"
      end
      # resource path
      local_var_path = '/api/v2/slo/report'

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
      return_type = opts[:debug_return_type] || 'SLOReportPostResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_slo_report_job,
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
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#create_slo_report_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get SLO report.
    #
    # @see #get_slo_report_with_http_info
    def get_slo_report(report_id, opts = {})
      data, _status_code, _headers = get_slo_report_with_http_info(report_id, opts)
      data
    end

    # Get SLO report.
    #
    # Download an SLO report. This can only be performed after the report job has completed.
    #
    # Reports are not guaranteed to exist indefinitely. Datadog recommends that you download the report as soon as it is available.
    #
    # @param report_id [String] The ID of the report job.
    # @param opts [Hash] the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_slo_report_with_http_info(report_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.get_slo_report".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.get_slo_report")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.get_slo_report"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.get_slo_report ...'
      end
      # verify the required parameter 'report_id' is set
      if @api_client.config.client_side_validation && report_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_id' when calling ServiceLevelObjectivesAPI.get_slo_report"
      end
      # resource path
      local_var_path = '/api/v2/slo/report/{report_id}/download'.sub('{report_id}', CGI.escape(report_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/csv', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_slo_report,
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
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#get_slo_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get SLO report status.
    #
    # @see #get_slo_report_job_status_with_http_info
    def get_slo_report_job_status(report_id, opts = {})
      data, _status_code, _headers = get_slo_report_job_status_with_http_info(report_id, opts)
      data
    end

    # Get SLO report status.
    #
    # Get the status of the SLO report job.
    #
    # @param report_id [String] The ID of the report job.
    # @param opts [Hash] the optional parameters
    # @return [Array<(SLOReportStatusGetResponse, Integer, Hash)>] SLOReportStatusGetResponse data, response status code and response headers
    def get_slo_report_job_status_with_http_info(report_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.get_slo_report_job_status".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.get_slo_report_job_status")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.get_slo_report_job_status"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesAPI.get_slo_report_job_status ...'
      end
      # verify the required parameter 'report_id' is set
      if @api_client.config.client_side_validation && report_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_id' when calling ServiceLevelObjectivesAPI.get_slo_report_job_status"
      end
      # resource path
      local_var_path = '/api/v2/slo/report/{report_id}/status'.sub('{report_id}', CGI.escape(report_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'SLOReportStatusGetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_slo_report_job_status,
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
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesAPI#get_slo_report_job_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
