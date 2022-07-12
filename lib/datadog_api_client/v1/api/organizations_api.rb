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
  class OrganizationsAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Create a child organization.
    #
    # @see #create_child_org_with_http_info
    def create_child_org(body, opts = {})
      data, _status_code, _headers = create_child_org_with_http_info(body, opts)
      data
    end

    # Create a child organization.
    #
    # Create a child organization.
    #
    # This endpoint requires the
    # [multi-organization account](https://docs.datadoghq.com/account_management/multi_organization/)
    # feature and must be enabled by
    # [contacting support](https://docs.datadoghq.com/help/).
    #
    # Once a new child organization is created, you can interact with it
    # by using the `org.public_id`, `api_key.key`, and
    # `application_key.hash` provided in the response.
    #
    # @param body [OrganizationCreateBody] Organization object that needs to be created
    # @param opts [Hash] the optional parameters
    # @return [Array<(OrganizationCreateResponse, Integer, Hash)>] OrganizationCreateResponse data, response status code and response headers
    def create_child_org_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_child_org)
        unstable_enabled = @api_client.config.unstable_operations[:create_child_org]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_child_org")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_child_org"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsAPI.create_child_org ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrganizationsAPI.create_child_org"
      end
      # resource path
      local_var_path = '/api/v1/org'

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
      return_type = opts[:debug_return_type] || 'OrganizationCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_child_org,
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
        @api_client.config.logger.debug "API called: OrganizationsAPI#create_child_org\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Spin-off Child Organization.
    #
    # @see #downgrade_org_with_http_info
    def downgrade_org(public_id, opts = {})
      data, _status_code, _headers = downgrade_org_with_http_info(public_id, opts)
      data
    end

    # Spin-off Child Organization.
    #
    # Only available for MSP customers. Removes a child organization from the hierarchy of the master organization and places the child organization on a 30-day trial.
    #
    # @param public_id [String] The `public_id` of the organization you are operating within.
    # @param opts [Hash] the optional parameters
    # @return [Array<(OrgDowngradedResponse, Integer, Hash)>] OrgDowngradedResponse data, response status code and response headers
    def downgrade_org_with_http_info(public_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:downgrade_org)
        unstable_enabled = @api_client.config.unstable_operations[:downgrade_org]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "downgrade_org")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "downgrade_org"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsAPI.downgrade_org ...'
      end
      # verify the required parameter 'public_id' is set
      if @api_client.config.client_side_validation && public_id.nil?
        fail ArgumentError, "Missing the required parameter 'public_id' when calling OrganizationsAPI.downgrade_org"
      end
      # resource path
      local_var_path = '/api/v1/org/{public_id}/downgrade'.sub('{public_id}', CGI.escape(public_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'OrgDowngradedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :downgrade_org,
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
        @api_client.config.logger.debug "API called: OrganizationsAPI#downgrade_org\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get organization information.
    #
    # @see #get_org_with_http_info
    def get_org(public_id, opts = {})
      data, _status_code, _headers = get_org_with_http_info(public_id, opts)
      data
    end

    # Get organization information.
    #
    # Get organization information.
    #
    # @param public_id [String] The `public_id` of the organization you are operating within.
    # @param opts [Hash] the optional parameters
    # @return [Array<(OrganizationResponse, Integer, Hash)>] OrganizationResponse data, response status code and response headers
    def get_org_with_http_info(public_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_org)
        unstable_enabled = @api_client.config.unstable_operations[:get_org]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_org")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_org"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsAPI.get_org ...'
      end
      # verify the required parameter 'public_id' is set
      if @api_client.config.client_side_validation && public_id.nil?
        fail ArgumentError, "Missing the required parameter 'public_id' when calling OrganizationsAPI.get_org"
      end
      # resource path
      local_var_path = '/api/v1/org/{public_id}'.sub('{public_id}', CGI.escape(public_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'OrganizationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_org,
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
        @api_client.config.logger.debug "API called: OrganizationsAPI#get_org\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List your managed organizations.
    #
    # @see #list_orgs_with_http_info
    def list_orgs(opts = {})
      data, _status_code, _headers = list_orgs_with_http_info(opts)
      data
    end

    # List your managed organizations.
    #
    # This endpoint returns data on your top-level organization.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(OrganizationListResponse, Integer, Hash)>] OrganizationListResponse data, response status code and response headers
    def list_orgs_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_orgs)
        unstable_enabled = @api_client.config.unstable_operations[:list_orgs]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_orgs")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_orgs"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsAPI.list_orgs ...'
      end
      # resource path
      local_var_path = '/api/v1/org'

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
      return_type = opts[:debug_return_type] || 'OrganizationListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_orgs,
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
        @api_client.config.logger.debug "API called: OrganizationsAPI#list_orgs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update your organization.
    #
    # @see #update_org_with_http_info
    def update_org(public_id, body, opts = {})
      data, _status_code, _headers = update_org_with_http_info(public_id, body, opts)
      data
    end

    # Update your organization.
    #
    # Update your organization.
    #
    # @param public_id [String] The `public_id` of the organization you are operating within.
    # @param body [Organization] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(OrganizationResponse, Integer, Hash)>] OrganizationResponse data, response status code and response headers
    def update_org_with_http_info(public_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_org)
        unstable_enabled = @api_client.config.unstable_operations[:update_org]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_org")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_org"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsAPI.update_org ...'
      end
      # verify the required parameter 'public_id' is set
      if @api_client.config.client_side_validation && public_id.nil?
        fail ArgumentError, "Missing the required parameter 'public_id' when calling OrganizationsAPI.update_org"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrganizationsAPI.update_org"
      end
      # resource path
      local_var_path = '/api/v1/org/{public_id}'.sub('{public_id}', CGI.escape(public_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'OrganizationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_org,
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
        @api_client.config.logger.debug "API called: OrganizationsAPI#update_org\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload IdP metadata.
    #
    # @see #upload_idp_for_org_with_http_info
    def upload_idp_for_org(public_id, idp_file, opts = {})
      data, _status_code, _headers = upload_idp_for_org_with_http_info(public_id, idp_file, opts)
      data
    end

    # Upload IdP metadata.
    #
    # There are a couple of options for updating the Identity Provider (IdP)
    # metadata from your SAML IdP.
    #
    # * **Multipart Form-Data**: Post the IdP metadata file using a form post.
    #
    # * **XML Body:** Post the IdP metadata file as the body of the request.
    #
    # @param public_id [String] The `public_id` of the organization you are operating with
    # @param idp_file [File] The path to the XML metadata file you wish to upload.
    # @param opts [Hash] the optional parameters
    # @return [Array<(IdpResponse, Integer, Hash)>] IdpResponse data, response status code and response headers
    def upload_idp_for_org_with_http_info(public_id, idp_file, opts = {})

      if @api_client.config.unstable_operations.has_key?(:upload_idp_for_org)
        unstable_enabled = @api_client.config.unstable_operations[:upload_idp_for_org]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "upload_idp_for_org")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "upload_idp_for_org"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsAPI.upload_idp_for_org ...'
      end
      # verify the required parameter 'public_id' is set
      if @api_client.config.client_side_validation && public_id.nil?
        fail ArgumentError, "Missing the required parameter 'public_id' when calling OrganizationsAPI.upload_idp_for_org"
      end
      # verify the required parameter 'idp_file' is set
      if @api_client.config.client_side_validation && idp_file.nil?
        fail ArgumentError, "Missing the required parameter 'idp_file' when calling OrganizationsAPI.upload_idp_for_org"
      end
      # resource path
      local_var_path = '/api/v1/org/{public_id}/idp_metadata'.sub('{public_id}', CGI.escape(public_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['idp_file'] = idp_file

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'IdpResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :upload_idp_for_org,
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
        @api_client.config.logger.debug "API called: OrganizationsAPI#upload_idp_for_org\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
