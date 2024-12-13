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
  class DataDeletionAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Cancels a data deletion request.
    #
    # @see #cancel_data_deletion_request_with_http_info
    def cancel_data_deletion_request(id, opts = {})
      data, _status_code, _headers = cancel_data_deletion_request_with_http_info(id, opts)
      data
    end

    # Cancels a data deletion request.
    #
    # Cancels a data deletion request by providing its ID.
    #
    # @param id [String] ID of the deletion request.
    # @param opts [Hash] the optional parameters
    # @return [Array<(CancelDataDeletionResponseBody, Integer, Hash)>] CancelDataDeletionResponseBody data, response status code and response headers
    def cancel_data_deletion_request_with_http_info(id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.cancel_data_deletion_request".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.cancel_data_deletion_request")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.cancel_data_deletion_request"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DataDeletionAPI.cancel_data_deletion_request ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DataDeletionAPI.cancel_data_deletion_request"
      end
      # resource path
      local_var_path = '/api/v2/deletion/requests/{id}/cancel'.sub('{id}', CGI.escape(id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'CancelDataDeletionResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :cancel_data_deletion_request,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Put, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DataDeletionAPI#cancel_data_deletion_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a data deletion request.
    #
    # @see #create_data_deletion_request_with_http_info
    def create_data_deletion_request(product, body, opts = {})
      data, _status_code, _headers = create_data_deletion_request_with_http_info(product, body, opts)
      data
    end

    # Creates a data deletion request.
    #
    # Creates a data deletion request by providing a query and a timeframe targeting the proper data.
    #
    # @param product [String] Name of the product to be deleted, either `logs` or `rum`.
    # @param body [CreateDataDeletionRequestBody] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(CreateDataDeletionResponseBody, Integer, Hash)>] CreateDataDeletionResponseBody data, response status code and response headers
    def create_data_deletion_request_with_http_info(product, body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.create_data_deletion_request".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.create_data_deletion_request")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.create_data_deletion_request"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DataDeletionAPI.create_data_deletion_request ...'
      end
      # verify the required parameter 'product' is set
      if @api_client.config.client_side_validation && product.nil?
        fail ArgumentError, "Missing the required parameter 'product' when calling DataDeletionAPI.create_data_deletion_request"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DataDeletionAPI.create_data_deletion_request"
      end
      # resource path
      local_var_path = '/api/v2/deletion/data/{product}'.sub('{product}', CGI.escape(product.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'CreateDataDeletionResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_data_deletion_request,
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
        @api_client.config.logger.debug "API called: DataDeletionAPI#create_data_deletion_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of data deletion requests.
    #
    # @see #get_data_deletion_requests_with_http_info
    def get_data_deletion_requests(opts = {})
      data, _status_code, _headers = get_data_deletion_requests_with_http_info(opts)
      data
    end

    # Gets a list of data deletion requests.
    #
    # Gets a list of data deletion requests based on several filter parameters.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :next_page The next page of the previous search. If the next_page parameter is included, the rest of the query elements are ignored.
    # @option opts [String] :product Retrieve only the requests related to the given product.
    # @option opts [String] :query Retrieve only the requests that matches the given query.
    # @option opts [String] :status Retrieve only the requests with the given status.
    # @option opts [Integer] :page_size Sets the page size of the search.
    # @return [Array<(GetDataDeletionsResponseBody, Integer, Hash)>] GetDataDeletionsResponseBody data, response status code and response headers
    def get_data_deletion_requests_with_http_info(opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.get_data_deletion_requests".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.get_data_deletion_requests")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.get_data_deletion_requests"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DataDeletionAPI.get_data_deletion_requests ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 50
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling DataDeletionAPI.get_data_deletion_requests, must be smaller than or equal to 50.'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling DataDeletionAPI.get_data_deletion_requests, must be greater than or equal to 1.'
      end
      # resource path
      local_var_path = '/api/v2/deletion/requests'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?
      query_params[:'product'] = opts[:'product'] if !opts[:'product'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetDataDeletionsResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_data_deletion_requests,
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
        @api_client.config.logger.debug "API called: DataDeletionAPI#get_data_deletion_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
