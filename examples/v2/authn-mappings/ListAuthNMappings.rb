# List all AuthN Mappings returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new
p api_instance.list_authn_mappings()
