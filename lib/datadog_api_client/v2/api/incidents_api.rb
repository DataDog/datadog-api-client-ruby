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
  class IncidentsAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create an incident.
    #
    # @see #create_incident_with_http_info
    def create_incident(body, opts = {})
      data, _status_code, _headers = create_incident_with_http_info(body, opts)
      data
    end

    # Create an incident.
    #
    # Create an incident.
    #
    # @param body [IncidentCreateRequest] Incident payload.
    # @param opts [Hash] the optional parameters
    # @return [Array<(IncidentResponse, Integer, Hash)>] IncidentResponse data, response status code and response headers
    def create_incident_with_http_info(body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["V2.create_incident".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "create_incident")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "create_incident"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsAPI.create_incident ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IncidentsAPI.create_incident"
      end
      # resource path
      local_var_path = '/api/v2/incidents'

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
      return_type = opts[:debug_return_type] || 'IncidentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_incident,
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
        @api_client.config.logger.debug "API called: IncidentsAPI#create_incident\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing incident.
    #
    # @see #delete_incident_with_http_info
    def delete_incident(incident_id, opts = {})
      delete_incident_with_http_info(incident_id, opts)
      nil
    end

    # Delete an existing incident.
    #
    # Deletes an existing incident from the users organization.
    #
    # @param incident_id [String] The UUID of the incident.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_incident_with_http_info(incident_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["V2.delete_incident".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_incident")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "delete_incident"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsAPI.delete_incident ...'
      end
      # verify the required parameter 'incident_id' is set
      if @api_client.config.client_side_validation && incident_id.nil?
        fail ArgumentError, "Missing the required parameter 'incident_id' when calling IncidentsAPI.delete_incident"
      end
      # resource path
      local_var_path = '/api/v2/incidents/{incident_id}'.sub('{incident_id}', CGI.escape(incident_id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_incident,
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
        @api_client.config.logger.debug "API called: IncidentsAPI#delete_incident\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the details of an incident.
    #
    # @see #get_incident_with_http_info
    def get_incident(incident_id, opts = {})
      data, _status_code, _headers = get_incident_with_http_info(incident_id, opts)
      data
    end

    # Get the details of an incident.
    #
    # Get the details of an incident by `incident_id`.
    #
    # @param incident_id [String] The UUID of the incident.
    # @param opts [Hash] the optional parameters
    # @option opts [Array<IncidentRelatedObject>] :include Specifies which types of related objects should be included in the response.
    # @return [Array<(IncidentResponse, Integer, Hash)>] IncidentResponse data, response status code and response headers
    def get_incident_with_http_info(incident_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["V2.get_incident".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "get_incident")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "get_incident"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsAPI.get_incident ...'
      end
      # verify the required parameter 'incident_id' is set
      if @api_client.config.client_side_validation && incident_id.nil?
        fail ArgumentError, "Missing the required parameter 'incident_id' when calling IncidentsAPI.get_incident"
      end
      # resource path
      local_var_path = '/api/v2/incidents/{incident_id}'.sub('{incident_id}', CGI.escape(incident_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = @api_client.build_collection_param(opts[:'include'], :csv) if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_incident,
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
        @api_client.config.logger.debug "API called: IncidentsAPI#get_incident\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of incidents.
    #
    # @see #list_incidents_with_http_info
    def list_incidents(opts = {})
      data, _status_code, _headers = list_incidents_with_http_info(opts)
      data
    end

    # Get a list of incidents.
    #
    # Get all incidents for the user's organization.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [Array<IncidentRelatedObject>] :include Specifies which types of related objects should be included in the response.
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_offset Specific offset to use as the beginning of the returned page.
    # @return [Array<(IncidentsResponse, Integer, Hash)>] IncidentsResponse data, response status code and response headers
    def list_incidents_with_http_info(opts = {})
      unstable_enabled = @api_client.config.unstable_operations["V2.list_incidents".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "list_incidents")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "list_incidents"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsAPI.list_incidents ...'
      end
      # resource path
      local_var_path = '/api/v2/incidents'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = @api_client.build_collection_param(opts[:'include'], :csv) if !opts[:'include'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[offset]'] = opts[:'page_offset'] if !opts[:'page_offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_incidents,
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
        @api_client.config.logger.debug "API called: IncidentsAPI#list_incidents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of incidents.
    #
    # Provide a paginated version of {#list_incidents}, returning all items.
    #
    # To use it you need to use a block: list_incidents_with_pagination { |item| p item }
    #
    # @yield [IncidentResponseData] Paginated items
    def list_incidents_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "page_size", 10)
        @api_client.set_attribute_from_path(api_version, opts, "page_size", Integer, page_size)
        while true do
            response = list_incidents(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "page_offset", Integer, @api_client.get_attribute_from_path(opts, "page_offset", 0) + page_size)
        end
    end

    # Update an existing incident.
    #
    # @see #update_incident_with_http_info
    def update_incident(incident_id, body, opts = {})
      data, _status_code, _headers = update_incident_with_http_info(incident_id, body, opts)
      data
    end

    # Update an existing incident.
    #
    # Updates an incident. Provide only the attributes that should be updated as this request is a partial update.
    #
    # @param incident_id [String] The UUID of the incident.
    # @param body [IncidentUpdateRequest] Incident Payload.
    # @param opts [Hash] the optional parameters
    # @option opts [Array<IncidentRelatedObject>] :include Specifies which types of related objects should be included in the response.
    # @return [Array<(IncidentResponse, Integer, Hash)>] IncidentResponse data, response status code and response headers
    def update_incident_with_http_info(incident_id, body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["V2.update_incident".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "update_incident")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "update_incident"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentsAPI.update_incident ...'
      end
      # verify the required parameter 'incident_id' is set
      if @api_client.config.client_side_validation && incident_id.nil?
        fail ArgumentError, "Missing the required parameter 'incident_id' when calling IncidentsAPI.update_incident"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IncidentsAPI.update_incident"
      end
      # resource path
      local_var_path = '/api/v2/incidents/{incident_id}'.sub('{incident_id}', CGI.escape(incident_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = @api_client.build_collection_param(opts[:'include'], :csv) if !opts[:'include'].nil?

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
      return_type = opts[:debug_return_type] || 'IncidentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :update_incident,
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
        @api_client.config.logger.debug "API called: IncidentsAPI#update_incident\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
