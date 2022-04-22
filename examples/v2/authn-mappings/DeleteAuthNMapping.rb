# Delete an AuthN Mapping returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new

# there is a valid "authn_mapping" in the system
AUTHN_MAPPING_DATA_ID = ENV["AUTHN_MAPPING_DATA_ID"]
api_instance.delete_authn_mapping(AUTHN_MAPPING_DATA_ID)
