# List all AuthN Mappings returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new

# there is a valid "authn_mapping" in the system
AUTHN_MAPPING_DATA_ATTRIBUTES_ATTRIBUTE_KEY = ENV["AUTHN_MAPPING_DATA_ATTRIBUTES_ATTRIBUTE_KEY"]
opts = {
  filter: AUTHN_MAPPING_DATA_ATTRIBUTES_ATTRIBUTE_KEY,
}
p api_instance.list_authn_mappings(opts)
