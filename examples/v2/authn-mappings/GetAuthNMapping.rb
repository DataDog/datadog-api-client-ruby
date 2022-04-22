# Get an AuthN Mapping by UUID returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new

# there is a valid "authn_mapping" in the system
AUTHN_MAPPING_DATA_ID = ENV["AUTHN_MAPPING_DATA_ID"]
p api_instance.get_authn_mapping(AUTHN_MAPPING_DATA_ID)
