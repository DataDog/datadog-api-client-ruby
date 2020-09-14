=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'cgi'

module DatadogAPIClient::V1
  class TagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add tags to a host
    # This endpoint allows you to add new tags to a host, optionally specifying where these tags come from.
    # @param host_name [String] This endpoint allows you to add new tags to a host, optionally specifying where the tags came from.
    # @param body [HostTags] Update host tags request body.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source The source of the tags. [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
    # @return [HostTags]
    def create_host_tags(host_name, body, opts = {})
      data, _status_code, _headers = create_host_tags_with_http_info(host_name, body, opts)
      data
    end

    # Add tags to a host
    # This endpoint allows you to add new tags to a host, optionally specifying where these tags come from.
    # @param host_name [String] This endpoint allows you to add new tags to a host, optionally specifying where the tags came from.
    # @param body [HostTags] Update host tags request body.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source The source of the tags. [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
    # @return [Array<(HostTags, Integer, Hash)>] HostTags data, response status code and response headers
    def create_host_tags_with_http_info(host_name, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.create_host_tags ...'
      end
      # verify the required parameter 'host_name' is set
      if @api_client.config.client_side_validation && host_name.nil?
        fail ArgumentError, "Missing the required parameter 'host_name' when calling TagsApi.create_host_tags"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TagsApi.create_host_tags"
      end
      # resource path
      local_var_path = '/api/v1/tags/hosts/{host_name}'.sub('{' + 'host_name' + '}', CGI.escape(host_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:return_type] || 'HostTags' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"TagsApi.create_host_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#create_host_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove host tags
    # This endpoint allows you to remove all user-assigned tags for a single host.
    # @param host_name [String] This endpoint allows you to remove all user-assigned tags for a single host.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source The source of the tags (e.g. chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
    # @return [nil]
    def delete_host_tags(host_name, opts = {})
      delete_host_tags_with_http_info(host_name, opts)
      nil
    end

    # Remove host tags
    # This endpoint allows you to remove all user-assigned tags for a single host.
    # @param host_name [String] This endpoint allows you to remove all user-assigned tags for a single host.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source The source of the tags (e.g. chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_host_tags_with_http_info(host_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.delete_host_tags ...'
      end
      # verify the required parameter 'host_name' is set
      if @api_client.config.client_side_validation && host_name.nil?
        fail ArgumentError, "Missing the required parameter 'host_name' when calling TagsApi.delete_host_tags"
      end
      # resource path
      local_var_path = '/api/v1/tags/hosts/{host_name}'.sub('{' + 'host_name' + '}', CGI.escape(host_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}
      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"TagsApi.delete_host_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => nil,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#delete_host_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get host tags
    # Return the list of tags that apply to a given host.
    # @param host_name [String] When specified, filters list of tags to those tags with the specified source.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Source to filter.
    # @return [HostTags]
    def get_host_tags(host_name, opts = {})
      data, _status_code, _headers = get_host_tags_with_http_info(host_name, opts)
      data
    end

    # Get host tags
    # Return the list of tags that apply to a given host.
    # @param host_name [String] When specified, filters list of tags to those tags with the specified source.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Source to filter.
    # @return [Array<(HostTags, Integer, Hash)>] HostTags data, response status code and response headers
    def get_host_tags_with_http_info(host_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.get_host_tags ...'
      end
      # verify the required parameter 'host_name' is set
      if @api_client.config.client_side_validation && host_name.nil?
        fail ArgumentError, "Missing the required parameter 'host_name' when calling TagsApi.get_host_tags"
      end
      # resource path
      local_var_path = '/api/v1/tags/hosts/{host_name}'.sub('{' + 'host_name' + '}', CGI.escape(host_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}
      # return_type
      return_type = opts[:return_type] || 'HostTags' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"TagsApi.get_host_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => nil,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#get_host_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Tags
    # Return a mapping of tags to hosts for your whole infrastructure.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source When specified, filters host list to those tags with the specified source.
    # @return [TagToHosts]
    def list_host_tags(opts = {})
      data, _status_code, _headers = list_host_tags_with_http_info(opts)
      data
    end

    # Get Tags
    # Return a mapping of tags to hosts for your whole infrastructure.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source When specified, filters host list to those tags with the specified source.
    # @return [Array<(TagToHosts, Integer, Hash)>] TagToHosts data, response status code and response headers
    def list_host_tags_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.list_host_tags ...'
      end
      # resource path
      local_var_path = '/api/v1/tags/hosts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}
      # return_type
      return_type = opts[:return_type] || 'TagToHosts' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"TagsApi.list_host_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => nil,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#list_host_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update host tags
    # This endpoint allows you to update/replace all tags in an integration source with those supplied in the request.
    # @param host_name [String] This endpoint allows you to update/replace all in an integration source with those supplied in the request.
    # @param body [HostTags] Add tags to host
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source The source of the tags (e.g. chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value)
    # @return [HostTags]
    def update_host_tags(host_name, body, opts = {})
      data, _status_code, _headers = update_host_tags_with_http_info(host_name, body, opts)
      data
    end

    # Update host tags
    # This endpoint allows you to update/replace all tags in an integration source with those supplied in the request.
    # @param host_name [String] This endpoint allows you to update/replace all in an integration source with those supplied in the request.
    # @param body [HostTags] Add tags to host
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source The source of the tags (e.g. chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value)
    # @return [Array<(HostTags, Integer, Hash)>] HostTags data, response status code and response headers
    def update_host_tags_with_http_info(host_name, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.update_host_tags ...'
      end
      # verify the required parameter 'host_name' is set
      if @api_client.config.client_side_validation && host_name.nil?
        fail ArgumentError, "Missing the required parameter 'host_name' when calling TagsApi.update_host_tags"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TagsApi.update_host_tags"
      end
      # resource path
      local_var_path = '/api/v1/tags/hosts/{host_name}'.sub('{' + 'host_name' + '}', CGI.escape(host_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:return_type] || 'HostTags' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"TagsApi.update_host_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#update_host_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
